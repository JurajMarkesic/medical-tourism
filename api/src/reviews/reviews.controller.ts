import { Body, CacheInterceptor, Controller, Get, Post, UseInterceptors } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { ReviewCreateDto } from './dto';
import { ReviewsService } from './reviews.service';

@Controller('reviews')
@UseInterceptors(CacheInterceptor)
@ApiTags('reviews')
export class ReviewsController {
  constructor(private readonly reviewsService: ReviewsService) {}

  @Get()
  findAll() {
    return this.reviewsService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful Registration' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  register(@Body() payload: ReviewCreateDto): Promise<any> {
    return this.reviewsService.create(payload);
  }
}
