import { Body, CacheInterceptor, Controller, Get, Post, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { ClinicPreferencesService } from './clinicPreferences.service';
import { CreateDto } from './dto';

@Controller('clinicPreferences')
@UseInterceptors(CacheInterceptor)
@ApiTags('clinicPreferences')
export class ClinicPreferencesController {
  constructor(private readonly clinicPreferencesService: ClinicPreferencesService) {}

  @Get()
  findAll() {
    return this.clinicPreferencesService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful Registration' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  register(@Body() payload: CreateDto): Promise<any> {
    return this.clinicPreferencesService.create(payload);
  }
}
