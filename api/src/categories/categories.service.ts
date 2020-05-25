import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { Category } from './categories.entity';
import { CategoryCreateDto, CategoryUpdateDto } from './dto';

@Injectable()
export class CategoriesService {
  constructor(
    @InjectRepository(Category)
    private readonly categoriesRepository: Repository<Category>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) { }

  async getAll() {
    let categories = await this.cacheStore.get('all_categories');

    if (categories) {
      this.logger.log('Getting all categories from cache.');
      return categories;
    }

    categories = await this.categoriesRepository.find();
    this.cacheStore.set('all_categories', categories, { ttl: 20 });

    this.logger.log('Querying all categories!');
    return categories;
  }

  async get(id: number): Promise<Category> {
    return this.categoriesRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.categoriesRepository
      .createQueryBuilder('categories')
      .where('categories.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: CategoryCreateDto): Promise<Category> {
    const oldCategory = await this.getByName(payload.name);

    if (oldCategory) {
      throw new NotAcceptableException('Category with provided name already created.');
    }

    return await this.categoriesRepository.save(this.categoriesRepository.create(payload as Object));
  }

  async update(payload: CategoryUpdateDto): Promise<Category> {
    const oldCategory = await this.get(payload.id);

    if (!oldCategory) {
      throw new NotAcceptableException('Category with provided id not yet created.');
    }

    return await this.categoriesRepository.save(payload);
  }
}
