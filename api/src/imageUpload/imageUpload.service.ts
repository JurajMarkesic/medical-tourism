import { Req, Res, Injectable } from '@nestjs/common';
import * as multer from 'multer';
import * as AWS from 'aws-sdk';
import * as multerS3 from 'multer-s3';
import { ConfigService } from '@nestjs/config';

@Injectable()
export class ImageUploadService {
  private storage;

  constructor(
    private readonly configService: ConfigService,
  ) {
    //Setup S3 storage
    this.storage = multerS3({
      s3: new AWS.S3({
        accessKeyId: this.configService.get<string>('aws.key'),
        secretAccessKey: this.configService.get<string>('aws.secret'),
        region: 'eu-central-1',
        signatureVersion: 'v4',
      }),
      bucket: this.configService.get<string>('aws.bucket'),
      acl: 'public-read',
      key: function (request, file, cb) {
        cb(null, `${Date.now().toString()} - ${file.originalname}`);
      },
    });
  }

  async fileUpload(@Req() request, @Res() response): Promise<any> {
    return new Promise((resolve, reject) => {
      try {
        const upload = multer({
          storage: this.storage,
          fileFilter: this.imageFilter,
        }).any();

        upload(request, response, function (error: string) {
          if (error) {
            console.log(error);
            reject(`Failed to upload files: ${error}`);
          }
          //Return info about created files
          resolve(request.files);
        });
      } catch (error) {
        console.log(error);
        reject(`Failed to upload files: ${error}`);
      }
    });
  }

  /**
   * Rejects all files if any of them are not an image.
   * @param request 
   * @param file 
   * @param cb 
   */
  protected imageFilter(request, file, cb) {
    if (!file.originalname.match(/\.(jpg|jpeg|png)$/)) {
      return cb(new Error('Only image files are allowed!'), false);
    }
    cb(null, true);
  }
}