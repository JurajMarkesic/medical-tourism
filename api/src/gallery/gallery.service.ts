import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { GalleryCreateDto } from './dto';
import { Gallery } from './gallery.entity';

@Injectable()
export class GallerysService {
  constructor(
    @InjectRepository(Gallery)
    private readonly galleryRepository: Repository<Gallery>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) { }

  async getAll() {
    let gallery = await this.cacheStore.get('all_gallery');

    if (gallery) {
      this.logger.log('Getting all gallery from cache.');
      return gallery;
    }

    gallery = await this.galleryRepository.find();
    this.cacheStore.set('all_gallery', gallery, { ttl: 20 });

    this.logger.log('Querying all gallery!');
    return gallery;
  }

  async get(id: number): Promise<Gallery> {
    return this.galleryRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.galleryRepository
      .createQueryBuilder('gallery')
      .where('gallery.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: GalleryCreateDto): Promise<Gallery> {
    const oldGallery = await this.getByName(payload.name);

    if (oldGallery) {
      throw new NotAcceptableException('Gallery with provided name already created.');
    }

    //@ts-ignore - wrong return type interference from an overloaded function
    return await this.galleryRepository.save(this.galleryRepository.create(payload));
  }
}
