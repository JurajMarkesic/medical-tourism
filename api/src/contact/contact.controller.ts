import { Body, CacheInterceptor, Controller, Get, Post, UseInterceptors, Delete, Param } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { ContactCreateDto } from './dto';
import { ContactsService } from './contact.service';

@Controller('contact')
@UseInterceptors(CacheInterceptor)
@ApiTags('contact')
export class ContactsController {
  constructor(private readonly contactService: ContactsService) { }

  @Get()
  findAll() {
    return this.contactService.getAll();
  }

  @Post()
  @ApiResponse({ status: 201, description: 'Successful creation' })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 401, description: 'Unauthorized' })
  create(@Body() payload: ContactCreateDto): Promise<any> {
    return this.contactService.create(payload as Record<string, any>);
  }
}
