import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonModule } from '../common/common.module';
import { CategoriesModule } from './../categories/categories.module';
import { TreatmentsController } from './treatments.controller';
import { Treatment } from './treatments.entity';
import { TreatmentsService } from './treatments.service';

@Module({
  imports: [TypeOrmModule.forFeature([Treatment]), CommonModule, CategoriesModule],
  providers: [TreatmentsService],
  controllers: [TreatmentsController],
})
export class TreatmentsModule {}
