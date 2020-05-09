import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { CreateDto } from './dto';
import { Preference } from './preferences.entity';

@Injectable()
export class PreferencesService {
  constructor(
    @InjectRepository(Preference)
    private readonly preferencesRepository: Repository<Preference>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) {}

  async getAll() {
    let preferences = await this.cacheStore.get('all_preferences');

    if (preferences) {
      this.logger.log('Getting all preferences from cache.');
      return preferences;
    }

    preferences = await this.preferencesRepository.find();
    this.cacheStore.set('all_preferences', preferences, { ttl: 20 });

    this.logger.log('Querying all preferences!');
    return preferences;
  }

  async get(id: number): Promise<Preference> {
    return this.preferencesRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.preferencesRepository
      .createQueryBuilder('preferences')
      .where('preferences.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: CreateDto): Promise<Preference> {
    const oldPreference = await this.getByName(payload.name);

    if (oldPreference) {
      throw new NotAcceptableException('Preference with provided name already created.');
    }

    //@ts-ignore - wrong return type interference from an overloaded function
    return await this.preferencesRepository.save(this.preferencesRepository.create(payload));
  }
}
