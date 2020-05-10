import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonModule } from '../common/common.module';
import { UserPreferencesController } from './userPreferences.controller';
import { UserPreferences } from './userPreferences.entity';
import { UserPreferencesService } from './userPreferences.service';

@Module({
  imports: [TypeOrmModule.forFeature([UserPreferences]), CommonModule],
  providers: [UserPreferencesService],
  controllers: [UserPreferencesController],
})
export class UserPreferencesModule {}
