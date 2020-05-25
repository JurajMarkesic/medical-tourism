import { CacheModule, Global, Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
// import { PrometheusModule } from '@willsoto/nestjs-prometheus';
import * as redisStore from 'cache-manager-redis-store';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './auth/auth.module';
import { ClinicsModule } from './clinics/clinics.module';
import { CommonModule } from './common/common.module';
import configuration from './config';
import { UsersModule } from './users/users.module';
import { ImageUploadModule } from './imageUpload/imageUpload.module';
import { MailerModule } from '@nestjs-modules/mailer';

@Global()
@Module({
  imports: [
    ConfigModule.forRoot({
      load: [configuration],
      isGlobal: true,
    }),
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: async (configService: ConfigService) => ({
        // Type cast important to specify which variant of TypeOrmModuleOptions useFactory() should return
        type: configService.get<string>('database.provider', 'postgres') as 'postgres',
        host: configService.get<string>('database.host', 'localhost'),
        port: configService.get<number>('database.port', 5432),
        username: configService.get<string>('database.user', 'postgres'),
        password: configService.get<string>('database.password', ''),
        database: configService.get<string>('database.name'),
        synchronize: configService.get<boolean>('database.synchronize'),
        autoLoadEntities: true,
        logging: true,
      }),
    }),
    CacheModule.registerAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: async (configService: ConfigService) => ({
        store: redisStore,
        host: 'redis',
        port: configService.get<string>('cache.port'),
        ttl: configService.get<string>('cache.ttl'),
      }),
    }),
    MailerModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: (configService: ConfigService) => ({
        transport: {
          host: configService.get<string>('email.host'),
          port: configService.get<string>('email.port'),
          ignoreTLS: true,
          secure: false,
          // auth: {
          //   user: configService.get<string>('email.user'),
          //   pass: configService.get<string>('email.pass')
          // },
        },
      }),
    }),
    // PrometheusModule.register(),
    CommonModule,
    ImageUploadModule,
    AuthModule,
    UsersModule,
    ClinicsModule,
  ],
  controllers: [AppController],
  providers: [AppService],
  exports: [
    CommonModule,
    CacheModule.registerAsync({
      imports: [ConfigModule],
      useFactory: async (configService: ConfigService) => ({
        store: redisStore,
        host: 'redis',
        port: configService.get<string>('cache.port'),
        ttl: configService.get<string>('cache.ttl'),
      }),
      inject: [ConfigService],
    }),
  ],
})
export class AppModule {}
