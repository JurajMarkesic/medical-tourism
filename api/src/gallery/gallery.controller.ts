import { Body, CacheInterceptor, Controller, Get, Post, Put, UseInterceptors, Delete, Param } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { GalleryCreateDto, GalleryUpdateDto } from './dto';
import { GallerysService } from './gallery.service';

@Controller('gallery')
@UseInterceptors(CacheInterceptor)
@ApiTags('gallery')
export class GallerysController {
  constructor(private readonly galleryService: GallerysService) {}

  @Get()
  findAll() {
    return this.galleryService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: GalleryCreateDto): Promise<any> {
    return this.galleryService.create(payload as Record<string, any>);
  }

  @Put()
  @ApiResponse({ status: 200, description: 'Successful update' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: GalleryUpdateDto): Promise<any> {
    return this.galleryService.update(payload);
  }

  @Delete(':id')
  @ApiResponse({ status: 200, description: 'Successful deletion' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  delete(@Param('id') id: number): Promise<any> {
    return this.galleryService.delete(id);
  }
}
