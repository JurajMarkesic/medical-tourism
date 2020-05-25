import { Body, CacheInterceptor, Controller, Get, Post, Put, UseInterceptors, Delete, Param } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { ClinicPreferencesService } from './clinicPreferences.service';
import { ClinicPreferencesCreateDto, ClinicPreferencesUpdateDto } from './dto';

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
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: ClinicPreferencesCreateDto): Promise<any> {
    return this.clinicPreferencesService.create(payload as Record<string, any>);
  }

  @Put()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: ClinicPreferencesUpdateDto): Promise<any> {
    return this.clinicPreferencesService.update(payload);
  }

  @Delete(':id')
  @ApiResponse({ status: 200, description: 'Successful deletion' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  delete(@Param('id') id: number): Promise<any> {
    return this.clinicPreferencesService.delete(id);
  }
}
