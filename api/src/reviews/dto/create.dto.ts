import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class CreateDto {
  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  name: string;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  body: string;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  starts: number;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  clinic: number;
}