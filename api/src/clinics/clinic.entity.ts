import { Column, Entity, JoinTable, ManyToMany, ManyToOne, OneToMany, OneToOne, PrimaryGeneratedColumn } from 'typeorm';
import { Amenity } from '../amenities/amenities.entity';
import { City } from '../cities/cities.entity';
import { ClinicPreferences } from '../clinicPreferences/clinicPreferences.entity';
import { Gallery } from '../gallery/gallery.entity';
import { Review } from '../reviews/reviews.entity';
import { Staff } from '../staff/staff.entity';
import { Treatment } from '../treatments/treatments.entity';
import { User } from '../users/user.entity';
import { Contact } from '../contact/contact.entity';

@Entity({
  name: 'clinics',
})
export class Clinic {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @Column({ length: 500 })
  address: string;

  @OneToOne(
    type => ClinicPreferences,
    preferences => preferences.clinic,
    {
      eager: true,
    },
  )
  preferences: ClinicPreferences;

  @OneToOne(
    type => Gallery,
    gallery => gallery.clinic,
    {
      eager: true,
    },
  )
  gallery: Gallery;

  @ManyToOne(
    type => User,
    user => user.clinics,
    {
      eager: true,
    },
  )
  user: User;

  @ManyToOne(
    type => City,
    city => city.clinics,
    {
      eager: true,
    },
  )
  city: City;

  @OneToMany(
    type => Review,
    review => review.clinic,
    {
      eager: true,
    },
  )
  reviews: Review[];

  @OneToMany(
    type => Treatment,
    treatment => treatment.clinic,
    {
      eager: true,
    },
  )
  treatments: Treatment[];

  @OneToMany(
    type => Contact,
    contact => contact.clinic,
    {
      eager: true,
    },
  )
  contacts: Contact[];

  @OneToMany(
    type => Staff,
    staff => staff.clinic,
    {
      eager: true,
    },
  )
  staff: Staff[];

  @ManyToMany(type => Amenity, {
    eager: true,
  })
  @JoinTable()
  amenities: Amenity[];
}
