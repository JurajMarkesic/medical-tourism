import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonModule } from '../common/common.module';
import { AmenitiesController } from './amenities.controller';
import { Amenity } from './amenities.entity';
import { AmenitiesService } from './amenities.service';

@Module({
  imports: [TypeOrmModule.forFeature([Amenity]), CommonModule],
  providers: [AmenitiesService],
  controllers: [AmenitiesController],
})
export class AmenitiesModule {}
