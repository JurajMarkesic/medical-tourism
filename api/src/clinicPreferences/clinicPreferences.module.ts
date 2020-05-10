import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonModule } from '../common/common.module';
import { ClinicPreferencesController } from './clinicPreferences.controller';
import { ClinicPreferences } from './clinicPreferences.entity';
import { ClinicPreferencesService } from './clinicPreferences.service';

@Module({
  imports: [TypeOrmModule.forFeature([ClinicPreferences]), CommonModule],
  providers: [ClinicPreferencesService],
  controllers: [ClinicPreferencesController],
})
export class ClinicPreferencesModule {}
