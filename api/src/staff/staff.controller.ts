import { Body, CacheInterceptor, Controller, Get, Post, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { StaffCreateDto } from './dto';
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
  @ApiResponse({ status: 201, description: 'Successful Registration' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  register(@Body() payload: StaffCreateDto): Promise<any> {
    return this.staffService.create(payload);
  }
}
