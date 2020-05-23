import { Module } from '@nestjs/common';
import { CommonModule } from '../common/common.module';
import { ImageUploadService } from './imageUpload.service';

@Module({
  imports: [CommonModule],
  providers: [ImageUploadService],
  exports: [ImageUploadService],
})
export class ImageUploadModule { }
