import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonModule } from '../common/common.module';
import { StaffsController } from './staff.controller';
import { Staff } from './staff.entity';
import { StaffsService } from './staff.service';

@Module({
  imports: [TypeOrmModule.forFeature([Staff]), CommonModule],
  providers: [StaffsService],
  controllers: [StaffsController],
})
export class StaffsModule {}
