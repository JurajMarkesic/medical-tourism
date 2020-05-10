import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { Clinic } from '../clinics/clinic.entity';

@Entity({
  name: 'reviews',
})
export class Review {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @Column({ type: 'text' })
  body: string;

  @Column()
  rating: boolean;

  @ManyToOne(
    type => Clinic,
    clinic => clinic.reviews,
  )
  clinic: Clinic;
}
