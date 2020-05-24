import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class GalleryUpdateDto {
  @ApiProperty({
    required: true,
  })
  @IsNotEmpty()
  id: number;

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
