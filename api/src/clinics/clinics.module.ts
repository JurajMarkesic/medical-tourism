import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonModule } from './../common/common.module';
import { Clinic } from './clinic.entity';
import { ClinicsController } from './clinics.controller';
import { ClinicsService } from './clinics.service';

@Module({
  imports: [TypeOrmModule.forFeature([Clinic]), CommonModule],
  providers: [ClinicsService],
  controllers: [ClinicsController],
})
export class ClinicsModule {}
