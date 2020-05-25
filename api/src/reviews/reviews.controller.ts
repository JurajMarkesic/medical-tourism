import { Body, CacheInterceptor, Controller, Get, Post, Put, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { ReviewCreateDto, ReviewUpdateDto } from './dto';
import { ReviewsService } from './reviews.service';

@Controller('reviews')
@UseInterceptors(CacheInterceptor)
@ApiTags('reviews')
export class ReviewsController {
  constructor(private readonly reviewsService: ReviewsService) { }

  @Get()
  findAll() {
    return this.reviewsService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: ReviewCreateDto): Promise<any> {
    return this.reviewsService.create(payload as Record<string, any>);
  }

  @Put()
  @ApiResponse({ status: 200, description: 'Successful update' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  update(@Body() payload: ReviewUpdateDto): Promise<any> {
    return this.reviewsService.update(payload);
  }
}
