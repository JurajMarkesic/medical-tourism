import { Body, CacheInterceptor, Controller, Get, Post, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { TreatmentCreateDto } from './dto';
import { TreatmentsService } from './treatments.service';

@Controller('treatments')
@UseInterceptors(CacheInterceptor)
@ApiTags('treatments')
export class TreatmentsController {
  constructor(private readonly treatmentsService: TreatmentsService) {}

  @Get()
  findAll() {
    return this.treatmentsService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful Registration' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  register(@Body() payload: TreatmentCreateDto): Promise<any> {
    return this.treatmentsService.create(payload);
  }
}
