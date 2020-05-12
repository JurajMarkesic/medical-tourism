import { Body, CacheInterceptor, Controller, Get, Post, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { UserPreferencesCreateDto } from './dto';
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
  @ApiResponse({ status: 201, description: 'Successful Registration' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  register(@Body() payload: UserPreferencesCreateDto): Promise<any> {
    return this.userPreferencesService.create(payload);
  }
}
