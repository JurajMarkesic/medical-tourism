import { Body, Controller, Post, Req, Res } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { ImageUploadService } from '../imageUpload/imageUpload.service'

@Controller('image')
@ApiTags('image')
export class ImageUploadController {
    constructor(private readonly imageUploadService: ImageUploadService) { }

    @Post()
    @ApiResponse({ status: 201, description: 'Successful creation' })
    @ApiResponse({ status: 401, description: 'Unauthorized' })
    @ApiResponse({ status: 500, description: 'Service Unavailable' })
    async addImages(@Req() request, @Res() response): Promise<any> {
        try {
            const images = await this.imageUploadService.fileUpload(request, response);
            console.log(images, 'aaaa');
            return response
                .status(201)
                .json(images);
        } catch (error) {
            return response
                .status(500)
                .json(`Failed to upload files. ${error.message}`);
        }
    }
}
