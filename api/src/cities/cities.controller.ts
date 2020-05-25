import { Body, CacheInterceptor, Controller, Get, Post, Put, UseInterceptors, Delete, Param } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { CitiesService } from './cities.service';
import { CityCreateDto, CityUpdateDto } from './dto';

@Controller('cities')
@UseInterceptors(CacheInterceptor)
@ApiTags('cities')
export class CitiesController {
  constructor(private readonly citiesService: CitiesService) {}

  @Get()
  findAll() {
    return this.citiesService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: CityCreateDto): Promise<any> {
    return this.citiesService.create(payload as Record<string, any>);
  }

  @Put()
  @ApiResponse({ status: 200, description: 'Successful update' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: CityUpdateDto): Promise<any> {
    return this.citiesService.update(payload);
  }

  @Delete(':id')
  @ApiResponse({ status: 200, description: 'Successful deletion' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  delete(@Param('id') id: number): Promise<any> {
    return this.citiesService.delete(id);
  }
}
