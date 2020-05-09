import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class CreateDto {
  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  name: string;
  @IsNotEmpty()
  role: string;
  @IsNotEmpty()
  description: string;
}
