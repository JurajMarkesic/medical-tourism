import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class TreatmentUpdateDto {
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
