import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { Category } from '../categories/categories.entity';
import { Clinic } from '../clinics/clinic.entity';

@Entity({
  name: 'treatments',
})
export class Treatment {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @Column()
  price: number;

  @Column({ type: 'text' })
  description: string;

  @ManyToOne(
    type => Clinic,
    clinic => clinic.treatments,
  )
  clinic: Clinic;

  @ManyToOne(
    type => Category,
    Category => Category.treatments,
    {
      eager: true,
    },
  )
  category: Category;
}
