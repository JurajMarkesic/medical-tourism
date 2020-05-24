import { Body, CacheInterceptor, Controller, Get, Post, Put, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { TreatmentCreateDto, TreatmentUpdateDto } from './dto';
import { TreatmentsService } from './treatments.service';

@Controller('treatments')
@UseInterceptors(CacheInterceptor)
@ApiTags('treatments')
export class TreatmentsController {
  constructor(private readonly treatmentsService: TreatmentsService) { }

  @Get()
  findAll() {
    return this.treatmentsService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: TreatmentCreateDto): Promise<any> {
    return this.treatmentsService.create(payload);
  }

  @Put()
  @ApiResponse({ status: 200, description: 'Successful update' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: TreatmentUpdateDto): Promise<any> {
    return this.treatmentsService.update(payload);
  }
}
