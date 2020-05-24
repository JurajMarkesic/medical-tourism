import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class ClinicUpdateDto {
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
  address: string;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  user: number;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  city: number;
}
