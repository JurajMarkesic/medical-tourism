import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class CityCreateDto {
  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  name: string;
}
