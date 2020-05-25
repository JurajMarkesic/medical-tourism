import { Body, CacheInterceptor, Controller, Get, Post, Put, UseInterceptors, Delete, Param } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { StaffCreateDto, StaffuUdateDto } from './dto';
import { StaffsService } from './staff.service';

@Controller('staff')
@UseInterceptors(CacheInterceptor)
@ApiTags('staff')
export class StaffsController {
  constructor(private readonly staffService: StaffsService) {}

  @Get()
  findAll() {
    return this.staffService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: StaffCreateDto): Promise<any> {
    return this.staffService.create(payload as Record<string, any>);
  }

  @Put()
  @ApiResponse({ status: 200, description: 'Successful update' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: StaffuUdateDto): Promise<any> {
    return this.staffService.update(payload);
  }

  @Delete(':id')
  @ApiResponse({ status: 200, description: 'Successful deletion' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  delete(@Param('id') id: number): Promise<any> {
    return this.staffService.delete(id);
  }
}
