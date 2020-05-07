import { Body, CacheInterceptor, Controller, Get, Post, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { ClinicsService } from './clinics.service';
import { CreateDto } from './dto';

@Controller('clinics')
@UseInterceptors(CacheInterceptor)
@ApiTags('clinics')
export class ClinicsController {
  constructor(private readonly clinicsService: ClinicsService) {}

  @Get()
  findAll() {
    return this.clinicsService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful Registration' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  register(@Body() payload: CreateDto): Promise<any> {
    return this.clinicsService.create(payload);
  }
}
