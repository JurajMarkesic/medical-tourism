import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { CreateDto } from './dto';
import { Staff } from './staff.entity';

@Injectable()
export class StaffsService {
  constructor(
    @InjectRepository(Staff)
    private readonly staffsRepository: Repository<Staff>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) {}

  async getAll() {
    let staffs = await this.cacheStore.get('all_staffs');

    if (staffs) {
      this.logger.log('Getting all staffs from cache.');
      return staffs;
    }

    staffs = await this.staffsRepository.find();
    this.cacheStore.set('all_staffs', staffs, { ttl: 20 });

    this.logger.log('Querying all staffs!');
    return staffs;
  }

  async get(id: number): Promise<Staff> {
    return this.staffsRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.staffsRepository
      .createQueryBuilder('staffs')
      .where('staffs.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: CreateDto): Promise<Staff> {
    const oldStaff = await this.getByName(payload.name);

    if (oldStaff) {
      throw new NotAcceptableException('Staff with provided name already created.');
    }

    //@ts-ignore - wrong return type interference from an overloaded function
    return await this.staffsRepository.save(this.staffsRepository.create(payload));
  }
}
