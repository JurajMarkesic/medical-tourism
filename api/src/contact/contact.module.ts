import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonModule } from '../common/common.module';
import { ContactsController } from './contact.controller';
import { Contact } from './contact.entity';
import { ContactsService } from './contact.service';
// import { ClinicsModule } from '../clinics/clinics.module'

@Module({
  imports: [TypeOrmModule.forFeature([Contact]), CommonModule],
  providers: [ContactsService],
  controllers: [ContactsController],
})
export class ContactModule { }
