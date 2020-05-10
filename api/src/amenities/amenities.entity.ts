import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from 'typeorm';
import { Clinic } from '../clinics/clinic.entity';

@Entity({
  name: 'amenities',
})
export class Amenity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @ManyToMany(type => Clinic)
  clinics: Clinic[];
}
