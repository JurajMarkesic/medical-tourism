import { Body, CacheInterceptor, Controller, Get, Post, Put, UseInterceptors, Delete, Param } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { UserPreferencesCreateDto, UserPreferencesUpdateDto } from './dto';
import { UserPreferencesService } from './userPreferences.service';

@Controller('userPreferences')
@UseInterceptors(CacheInterceptor)
@ApiTags('userPreferences')
export class UserPreferencesController {
  constructor(private readonly userPreferencesService: UserPreferencesService) {}

  @Get()
  findAll() {
    return this.userPreferencesService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: UserPreferencesCreateDto): Promise<any> {
    return this.userPreferencesService.create(payload as Record<string, any>);
  }

  @Put()
  @ApiResponse({ status: 200, description: 'Successful update' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: UserPreferencesUpdateDto): Promise<any> {
    return this.userPreferencesService.update(payload);
  }

  @Delete(':id')
  @ApiResponse({ status: 200, description: 'Successful deletion' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  delete(@Param('id') id: number): Promise<any> {
    return this.userPreferencesService.delete(id);
  }
}
