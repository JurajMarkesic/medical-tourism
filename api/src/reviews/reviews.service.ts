import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { ReviewCreateDto } from './dto';
import { Review } from './reviews.entity';

@Injectable()
export class ReviewsService {
  constructor(
    @InjectRepository(Review)
    private readonly reviewsRepository: Repository<Review>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) {}

  async getAll() {
    let reviews = await this.cacheStore.get('all_reviews');

    if (reviews) {
      this.logger.log('Getting all reviews from cache.');
      return reviews;
    }

    reviews = await this.reviewsRepository.find();
    this.cacheStore.set('all_reviews', reviews, { ttl: 20 });

    this.logger.log('Querying all reviews!');
    return reviews;
  }

  async get(id: number): Promise<Review> {
    return this.reviewsRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.reviewsRepository
      .createQueryBuilder('reviews')
      .where('reviews.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: ReviewCreateDto): Promise<Review> {
    const oldReview = await this.getByName(payload.name);

    if (oldReview) {
      throw new NotAcceptableException('Review with provided name already created.');
    }

    //@ts-ignore - wrong return type interference from an overloaded function
    return await this.reviewsRepository.save(this.reviewsRepository.create(payload));
  }
}
