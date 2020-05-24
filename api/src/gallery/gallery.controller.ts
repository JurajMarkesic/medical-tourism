import { Body, CacheInterceptor, Controller, Get, Post, Param, Put, Req, Res, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { GalleryCreateDto, GalleryUpdateDto } from './dto';
import { GallerysService } from './gallery.service';
import { ImageUploadService } from '../imageUpload/imageUpload.service'

@Controller('gallery')
@UseInterceptors(CacheInterceptor)
@ApiTags('gallery')
export class GallerysController {
  constructor(private readonly galleryService: GallerysService,
    private readonly imageUploadService: ImageUploadService) { }

  @Get()
  findAll() {
    return this.galleryService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: GalleryCreateDto): Promise<any> {
    return this.galleryService.create(payload);
  }

  @Put()
  @ApiResponse({ status: 200, description: 'Successful update' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: GalleryUpdateDto): Promise<any> {
    return this.galleryService.update(payload);
  }

}
