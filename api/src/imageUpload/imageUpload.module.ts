import { Module } from '@nestjs/common';
import { CommonModule } from '../common/common.module';
import { ImageUploadService } from './imageUpload.service';
import { ImageUploadController } from './imageUpload.controller'

@Module({
  imports: [CommonModule],
  controllers: [ImageUploadController],
  providers: [ImageUploadService],
  exports: [ImageUploadService],
})
export class ImageUploadModule { }
