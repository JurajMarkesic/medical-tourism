import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { TreatmentCreateDto, TreatmentUpdateDto } from './dto';
import { Treatment } from './treatments.entity';

@Injectable()
export class TreatmentsService {
  constructor(
    @InjectRepository(Treatment)
    private readonly treatmentsRepository: Repository<Treatment>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) { }

  async getAll() {
    let treatments = await this.cacheStore.get('all_treatments');

    if (treatments) {
      this.logger.log('Getting all treatments from cache.');
      return treatments;
    }

    treatments = await this.treatmentsRepository.find();
    this.cacheStore.set('all_treatments', treatments, { ttl: 20 });

    this.logger.log('Querying all treatments!');
    return treatments;
  }

  async get(id: number): Promise<Treatment> {
    return this.treatmentsRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.treatmentsRepository
      .createQueryBuilder('treatments')
      .where('treatments.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: TreatmentCreateDto): Promise<Treatment> {
    const oldTreatment = await this.getByName(payload.name);

    if (oldTreatment) {
      throw new NotAcceptableException('Treatment with provided name already created.');
    }

    //@ts-ignore - wrong return type interference from an overloaded function
    return await this.treatmentsRepository.save(this.treatmentsRepository.create(payload));
  }

  async update(payload: TreatmentUpdateDto): Promise<Treatment> {
    const oldTreatment = await this.get(payload.id);

    if (!oldTreatment) {
      throw new NotAcceptableException('Treatment with provided id not yet created.');
    }

    return await this.treatmentsRepository.save(payload);
  }
}
