import { Body, CacheInterceptor, Controller, Get, Post, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { CategoriesService } from './categories.service';
import { CategoryCreateDto } from './dto';

@Controller('categories')
@UseInterceptors(CacheInterceptor)
@ApiTags('categories')
export class CategoriesController {
  constructor(private readonly categoriesService: CategoriesService) {}

  @Get()
  findAll() {
    return this.categoriesService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful Registration' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  register(@Body() payload: CategoryCreateDto): Promise<any> {
    return this.categoriesService.create(payload);
  }
}
