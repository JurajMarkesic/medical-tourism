import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class TreatmentCreateDto {
  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  name: string;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  price: number;

  @ApiProperty({
    required: false,
  })
  description: string;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  clinic: number;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  category: number;
}
