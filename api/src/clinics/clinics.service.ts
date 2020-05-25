import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from './../common/LoggerService';
import { Clinic } from './clinic.entity';
import { ClinicCreateDto, ClinicUpdateDto } from './dto';

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

  async create(payload: ClinicCreateDto): Promise<Clinic> {
    const oldClinic = await this.getByName(payload.name);

    if (oldClinic) {
      throw new NotAcceptableException('Clinic with provided name already created.');
    }

    return await this.clinicsRepository.save(this.clinicsRepository.create(payload as Record<string, any>));
  }

  async update(payload: ClinicUpdateDto): Promise<Clinic> {
    const oldClinic = await this.get(payload.id);

    if (!oldClinic) {
      throw new NotAcceptableException('Clinic with provided id not yet created.');
    }

    return await this.clinicsRepository.save(payload);
  }

  async delete(id: number): Promise<Clinic> {
    const oldClinic = await this.get(id);

    if (!oldClinic) {
      throw new NotAcceptableException('Clinic does not exit.');
    }

    return await this.clinicsRepository.remove(oldClinic);
  }
}
