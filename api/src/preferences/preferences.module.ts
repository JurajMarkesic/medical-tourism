import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonModule } from '../common/common.module';
import { PreferencesController } from './preferences.controller';
import { Preference } from './preferences.entity';
import { PreferencesService } from './preferences.service';

@Module({
  imports: [TypeOrmModule.forFeature([Preference]), CommonModule],
  providers: [PreferencesService],
  controllers: [PreferencesController],
})
export class PreferencesModule {}
