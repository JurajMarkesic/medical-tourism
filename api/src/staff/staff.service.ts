import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { StaffCreateDto, StaffuUdateDto } from './dto';
import { Staff } from './staff.entity';

@Injectable()
export class StaffsService {
  constructor(
    @InjectRepository(Staff)
    private readonly staffRepository: Repository<Staff>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
  ) { }

  async getAll() {
    let staff = await this.cacheStore.get('all_staff');

    if (staff) {
      this.logger.log('Getting all staff from cache.');
      return staff;
    }

    staff = await this.staffRepository.find();
    this.cacheStore.set('all_staff', staff, { ttl: 20 });

    this.logger.log('Querying all staff!');
    return staff;
  }

  async get(id: number): Promise<Staff> {
    return this.staffRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.staffRepository
      .createQueryBuilder('staff')
      .where('staff.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: StaffCreateDto): Promise<Staff> {
    const oldStaff = await this.getByName(payload.name);

    if (oldStaff) {
      throw new NotAcceptableException('Staff with provided name already created.');
    }

    return await this.staffRepository.save(this.staffRepository.create(payload as Object));
  }

  async update(payload: StaffuUdateDto): Promise<Staff> {
    const oldStaff = await this.get(payload.id);

    if (!oldStaff) {
      throw new NotAcceptableException('Staff with provided id not yet created.');
    }

    return await this.staffRepository.save(payload);
  }
}
