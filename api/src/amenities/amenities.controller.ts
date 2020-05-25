import { Body, CacheInterceptor, Controller, Get, Post, Put, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { AmenitiesService } from './amenities.service';
import { AmenityCreateDto, AmenityUpdateDto } from './dto';

@Controller('amenities')
@UseInterceptors(CacheInterceptor)
@ApiTags('amenities')
export class AmenitiesController {
  constructor(private readonly amenitiesService: AmenitiesService) { }

  @Get()
  findAll() {
    return this.amenitiesService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful Creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: AmenityCreateDto): Promise<any> {
    return this.amenitiesService.create(payload as Record<string, any>);
  }

  @Put()
  @ApiResponse({ status: 200, description: 'Successful update' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: AmenityUpdateDto): Promise<any> {
    return this.amenitiesService.update(payload);
  }
}
