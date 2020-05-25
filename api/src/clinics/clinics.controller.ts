import { Body, CacheInterceptor, Controller, Get, Post, Put, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { ClinicsService } from './clinics.service';
import { ClinicCreateDto, ClinicUpdateDto } from './dto';

@Controller('clinics')
@UseInterceptors(CacheInterceptor)
@ApiTags('clinics')
export class ClinicsController {
  constructor(private readonly clinicsService: ClinicsService) { }

  @Get()
  findAll() {
    return this.clinicsService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: ClinicCreateDto): Promise<any> {
    return this.clinicsService.create(payload as Object);
  }

  @Put()
  @ApiResponse({ status: 200, description: 'Successful update' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: ClinicUpdateDto): Promise<any> {
    return this.clinicsService.update(payload);
  }
}
