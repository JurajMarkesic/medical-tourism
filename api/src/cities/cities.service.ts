import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { City } from './cities.entity';
import { CityCreateDto, CityUpdateDto } from './dto';

@Injectable()
export class CitiesService {
  constructor(
    @InjectRepository(City)
    private readonly citiesRepository: Repository<City>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) {}

  async getAll() {
    let cities = await this.cacheStore.get('all_cities');

    if (cities) {
      this.logger.log('Getting all cities from cache.');
      return cities;
    }

    cities = await this.citiesRepository.find();
    this.cacheStore.set('all_cities', cities, { ttl: 20 });

    this.logger.log('Querying all cities!');
    return cities;
  }

  async get(id: number): Promise<City> {
    return this.citiesRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.citiesRepository
      .createQueryBuilder('cities')
      .where('cities.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: CityCreateDto): Promise<City> {
    const oldCity = await this.getByName(payload.name);

    if (oldCity) {
      throw new NotAcceptableException('City with provided name already created.');
    }

    return await this.citiesRepository.save(this.citiesRepository.create(payload as Record<string, any>));
  }

  async update(payload: CityUpdateDto): Promise<City> {
    const oldCity = await this.get(payload.id);

    if (!oldCity) {
      throw new NotAcceptableException('City with provided id not yet created.');
    }

    return await this.citiesRepository.save(payload);
  }

  async delete(id: number): Promise<City> {
    const oldCity = await this.get(id);

    if (!oldCity) {
      throw new NotAcceptableException('City does not exit.');
    }

    return await this.citiesRepository.remove(oldCity);
  }
}
