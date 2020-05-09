import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class CreateDto {
  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  name: string;

  @IsNotEmpty()
  body: string;

  @IsNotEmpty()
  rating: boolean;
}
