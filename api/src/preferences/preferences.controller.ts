import { Body, CacheInterceptor, Controller, Get, Post, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { CreateDto } from './dto';
import { PreferencesService } from './preferences.service';

@Controller('preferences')
@UseInterceptors(CacheInterceptor)
@ApiTags('preferences')
export class PreferencesController {
  constructor(private readonly preferencesService: PreferencesService) {}

  @Get()
  findAll() {
    return this.preferencesService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful Registration' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  register(@Body() payload: CreateDto): Promise<any> {
    return this.preferencesService.create(payload);
  }
}
