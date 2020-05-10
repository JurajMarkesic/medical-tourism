import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { makeCounterProvider } from '@willsoto/nestjs-prometheus';
import { UserPreferencesModule } from '../userPreferences/userPreferences.module';
import { CommonModule } from './../common/common.module';
import { User } from './user.entity';
import { UsersController } from './users.controller';
import { UsersService } from './users.service';

@Module({
  imports: [TypeOrmModule.forFeature([User]), CommonModule, UserPreferencesModule],
  providers: [
    UsersService,
    makeCounterProvider({
      name: 'all_users_count',
      help: 'Shows the amount of times all users have been queried.',
    }),
  ],
  controllers: [UsersController],
  exports: [UsersService],
})
export class UsersModule {}
