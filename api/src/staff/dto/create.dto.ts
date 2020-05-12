import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class StaffCreateDto {
  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  name: string;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  role: string;

  @ApiProperty({
    required: false,
  })
  description: string;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  clinic: number;
}
