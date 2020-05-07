import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from './../common/LoggerService';
import { Clinic } from './clinic.entity';
import { CreateDto } from './dto';

@Injectable()
export class ClinicsService {
  constructor(
    @InjectRepository(Clinic)
    private readonly clinicsRepository: Repository<Clinic>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) {}

  async getAll() {
    let clinics = await this.cacheStore.get('all_clinics');

    if (clinics) {
      this.logger.log('Getting all clinics from cache.');
      return clinics;
    }

    clinics = await this.clinicsRepository.find();
    this.cacheStore.set('all_clinics', clinics, { ttl: 20 });

    this.logger.log('Querying all clinics!');
    return clinics;
  }

  async get(id: number): Promise<Clinic> {
    return this.clinicsRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.clinicsRepository
      .createQueryBuilder('clinics')
      .where('clinics.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: CreateDto): Promise<Clinic> {
    const oldClinic = await this.getByName(payload.name);

    if (oldClinic) {
      throw new NotAcceptableException('Clinic with provided name already created.');
    }

    //@ts-ignore - wrong return type interference from an overloaded function
    return await this.clinicsRepository.save(this.clinicsRepository.create(payload));
  }
}
