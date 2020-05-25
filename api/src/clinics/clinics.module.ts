import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AmenitiesModule } from '../amenities/amenities.module';
import { CitiesModule } from '../cities/cities.module';
import { ClinicPreferencesModule } from '../clinicPreferences/clinicPreferences.module';
import { ReviewsModule } from '../reviews/reviews.module';
import { StaffModule } from '../staff/staff.module';
import { GalleryModule } from '../gallery/gallery.module';
import { TreatmentsModule } from '../treatments/treatments.module';
import { ContactModule } from '../contact/contact.module';
import { CommonModule } from './../common/common.module';
import { Clinic } from './clinic.entity';
import { ClinicsController } from './clinics.controller';
import { ClinicsService } from './clinics.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([Clinic]),
    CommonModule,
    ClinicPreferencesModule,
    CitiesModule,
    ReviewsModule,
    TreatmentsModule,
    GalleryModule,
    StaffModule,
    AmenitiesModule,
    ContactModule,
  ],
  providers: [ClinicsService],
  controllers: [ClinicsController],
})
export class ClinicsModule { }
