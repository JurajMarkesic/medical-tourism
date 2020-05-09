import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonModule } from '../common/common.module';
import { CitiesController } from './cities.controller';
import { City } from './cities.entity';
import { CitiesService } from './cities.service';

@Module({
  imports: [TypeOrmModule.forFeature([City]), CommonModule],
  providers: [CitiesService],
  controllers: [CitiesController],
})
export class CitiesModule {}
