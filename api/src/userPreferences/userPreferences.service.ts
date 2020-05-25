import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { UserPreferencesCreateDto, UserPreferencesUpdateDto } from './dto';
import { UserPreferences } from './userPreferences.entity';

@Injectable()
export class UserPreferencesService {
  constructor(
    @InjectRepository(UserPreferences)
    private readonly userPreferencesRepository: Repository<UserPreferences>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) { }

  async getAll() {
    let userPreferences = await this.cacheStore.get('all_userPreferences');

    if (userPreferences) {
      this.logger.log('Getting all userPreferences from cache.');
      return userPreferences;
    }

    userPreferences = await this.userPreferencesRepository.find();
    this.cacheStore.set('all_userPreferences', userPreferences, { ttl: 20 });

    this.logger.log('Querying all userPreferences!');
    return userPreferences;
  }

  async get(id: number): Promise<UserPreferences> {
    return this.userPreferencesRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.userPreferencesRepository
      .createQueryBuilder('userPreferences')
      .where('userPreferences.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: UserPreferencesCreateDto): Promise<UserPreferences> {
    const oldUserPreferences = await this.getByName(payload.name);

    if (oldUserPreferences) {
      throw new NotAcceptableException('UserPreferences with provided name already created.');
    }

    return await this.userPreferencesRepository.save(this.userPreferencesRepository.create(payload as Object));
  }

  async update(payload: UserPreferencesUpdateDto): Promise<UserPreferences> {
    const oldUserPreferences = await this.get(payload.id);

    if (!oldUserPreferences) {
      throw new NotAcceptableException('UserPreferences with provided id not yet created.');
    }

    return await this.userPreferencesRepository.save(payload);
  }
}
