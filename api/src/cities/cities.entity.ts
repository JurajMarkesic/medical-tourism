import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { Clinic } from '../clinics/clinic.entity';

@Entity({
  name: 'cities',
})
export class City {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @OneToMany(
    type => Clinic,
    clinic => clinic.city,
  )
  clinics: Clinic[];
}
