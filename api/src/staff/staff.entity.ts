import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { Clinic } from '../clinics/clinic.entity';

@Entity({
  name: 'staffs',
})
export class Staff {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @Column({ length: 255 })
  role: string;

  @Column({ type: 'text' })
  description: string;

  @ManyToOne(
    type => Clinic,
    clinic => clinic.staff,
  )
  clinic: Clinic;
}
