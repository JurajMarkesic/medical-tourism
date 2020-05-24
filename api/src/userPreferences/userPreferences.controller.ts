import { Body, CacheInterceptor, Controller, Get, Post, Put, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { UserPreferencesCreateDto, UserPreferencesUpdateDto } from './dto';
import { UserPreferencesService } from './userPreferences.service';

@Controller('userPreferences')
@UseInterceptors(CacheInterceptor)
@ApiTags('userPreferences')
export class UserPreferencesController {
  constructor(private readonly userPreferencesService: UserPreferencesService) { }

  @Get()
  findAll() {
    return this.userPreferencesService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: UserPreferencesCreateDto): Promise<any> {
    return this.userPreferencesService.create(payload);
  }

  @Put()
  @ApiResponse({ status: 200, description: 'Successful update' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: UserPreferencesUpdateDto): Promise<any> {
    return this.userPreferencesService.update(payload);
  }
}
