import { Column, Entity, ManyToMany, PrimaryGeneratedColumn, JoinTable } from 'typeorm';
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
  @JoinTable()
  clinics: Clinic[];
}
