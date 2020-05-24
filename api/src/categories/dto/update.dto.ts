import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class CategoryUpdateDto {
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
    required: false,
  })
  parent?: number;
}
