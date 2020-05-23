import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonModule } from '../common/common.module';
import { GallerysController } from './gallery.controller';
import { Gallery } from './gallery.entity';
import { GallerysService } from './gallery.service';

@Module({
  imports: [TypeOrmModule.forFeature([Gallery]), CommonModule],
  providers: [GallerysService],
  controllers: [GallerysController],
})
export class GalleryModule { }
