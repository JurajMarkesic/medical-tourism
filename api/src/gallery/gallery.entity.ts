import { Column, Entity, OneToOne, JoinColumn, PrimaryGeneratedColumn } from 'typeorm';
import { Clinic } from '../clinics/clinic.entity';

@Entity({
  name: 'gallery',
})
export class Gallery {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ type: 'text' })
  images: string;

  @OneToOne(type => Clinic)
  @JoinColumn()
  clinic: Clinic;
}
