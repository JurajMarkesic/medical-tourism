import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { Amenity } from './amenities.entity';
import { AmenityCreateDto, AmenityUpdateDto } from './dto';
import { MailerService } from '@nestjs-modules/mailer';

@Injectable()
export class AmenitiesService {
  constructor(
    @InjectRepository(Amenity)
    private readonly amenitiesRepository: Repository<Amenity>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
    private readonly mailerService: MailerService,
  ) { }

  async getAll() {
    let amenities = await this.cacheStore.get('all_amenities');

    if (amenities) {
      this.logger.log('Getting all amenities from cache.');
      return amenities;
    }

    amenities = await this.amenitiesRepository.find();
    this.cacheStore.set('all_amenities', amenities, { ttl: 20 });

    this.logger.log('Querying all amenities!');
    return amenities;
  }

  async get(id: number): Promise<Amenity> {
    return this.amenitiesRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.amenitiesRepository
      .createQueryBuilder('amenities')
      .where('amenities.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: AmenityCreateDto): Promise<Amenity> {
    const oldAmenity = await this.getByName(payload.name);

    if (oldAmenity) {
      throw new NotAcceptableException('Amenity with provided name already created.');
    }

    this
      .mailerService
      .sendMail({
        to: 'test@nestjs.com', // list of receivers
        from: '"Medicro" medicro@primrose.agency',
        subject: 'Testing Nest MailerModule ✔', // Subject line
        text: 'welcome', // plaintext body
        html: '<b>New amenity created</b>', // HTML body content
      })
      .then(() => { })
      .catch(() => { });

    //@ts-ignore - wrong return type interference from an overloaded function
    return await this.amenitiesRepository.save(this.amenitiesRepository.create(payload));
  }

  async update(payload: AmenityUpdateDto): Promise<Amenity> {
    const oldAmenity = await this.get(payload.id);

    if (!oldAmenity) {
      throw new NotAcceptableException('Amenity does not exit.');
    }

    return await this.amenitiesRepository.save(payload);
  }
}
