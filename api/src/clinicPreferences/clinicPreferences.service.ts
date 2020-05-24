import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { ClinicPreferences } from './clinicPreferences.entity';
import { ClinicPreferencesCreateDto, ClinicPreferencesUpdateDto } from './dto';

@Injectable()
export class ClinicPreferencesService {
  constructor(
    @InjectRepository(ClinicPreferences)
    private readonly clinicPreferencesRepository: Repository<ClinicPreferences>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) { }

  async getAll() {
    let clinicPreferences = await this.cacheStore.get('all_clinicPreferences');

    if (clinicPreferences) {
      this.logger.log('Getting all clinicPreferences from cache.');
      return clinicPreferences;
    }

    clinicPreferences = await this.clinicPreferencesRepository.find();
    this.cacheStore.set('all_clinicPreferences', clinicPreferences, { ttl: 20 });

    this.logger.log('Querying all clinicPreferences!');
    return clinicPreferences;
  }

  async get(id: number): Promise<ClinicPreferences> {
    return this.clinicPreferencesRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.clinicPreferencesRepository
      .createQueryBuilder('clinicPreferences')
      .where('clinicPreferences.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: ClinicPreferencesCreateDto): Promise<ClinicPreferences> {
    const oldClinicPreferences = await this.getByName(payload.name);

    if (oldClinicPreferences) {
      throw new NotAcceptableException('ClinicPreference with provided name already created.');
    }

    //@ts-ignore - wrong return type interference from an overloaded function
    return await this.clinicPreferencesRepository.save(this.clinicPreferencesRepository.create(payload));
  }

  async update(payload: ClinicPreferencesUpdateDto): Promise<ClinicPreferences> {
    const oldClinicPreferences = await this.get(payload.id);

    if (!oldClinicPreferences) {
      throw new NotAcceptableException('ClinicPreference with provided id not yet created.');
    }

    return await this.clinicPreferencesRepository.save(payload);
  }
}
