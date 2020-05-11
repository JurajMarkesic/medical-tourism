import { Column, Entity, JoinTable, ManyToMany, ManyToOne, OneToMany, OneToOne, PrimaryGeneratedColumn } from 'typeorm';
import { Amenity } from '../amenities/amenities.entity';
import { City } from '../cities/cities.entity';
import { ClinicPreferences } from '../clinicPreferences/clinicPreferences.entity';
import { Review } from '../reviews/reviews.entity';
import { Staff } from '../staff/staff.entity';
import { Treatment } from '../treatments/treatments.entity';
import { User } from '../users/user.entity';

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

  @OneToOne(type => ClinicPreferences)
  preferences: ClinicPreferences;

  @ManyToOne(
    type => User,
    user => user.clinics,
  )
  user: User;

  @ManyToOne(
    type => City,
    city => city.clinics,
  )
  city: City;

  @OneToMany(
    type => Review,
    review => review.clinic,
  )
  reviews: Review[];

  @OneToMany(
    type => Treatment,
    treatment => treatment.clinic,
  )
  treatments: Treatment[];

  @OneToMany(
    type => Staff,
    staff => staff.clinic,
  )
  staff: Staff[];

  @ManyToMany(type => Amenity)
  @JoinTable()
  amenities: Amenity[];
}
