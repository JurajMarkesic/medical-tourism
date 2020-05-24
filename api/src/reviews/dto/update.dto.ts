import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class ReviewUpdateDto {
  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  id: number;

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
  stars: number;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  clinic: number;
}
