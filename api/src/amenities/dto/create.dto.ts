import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class AmenityCreateDto {
  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  name: string;
}
