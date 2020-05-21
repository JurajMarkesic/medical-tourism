import { Module } from '@nestjs/common';
import { CommonModule } from '../common/common.module';
import { ImageUploadController } from './imageUpload.controller';
import { ImageUploadService } from './imageUpload.service';

@Module({
  imports: [CommonModule],
  providers: [ImageUploadService],
  exports: [ImageUploadService],
  controllers: [ImageUploadController],
})
export class ImageUploadModule { }
