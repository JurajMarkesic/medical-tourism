import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class GalleryCreateDto {
  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  images: string;

  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  clinic: number;
}
