import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class StaffUpdateDto {
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
