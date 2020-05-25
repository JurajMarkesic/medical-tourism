import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { Clinic } from '../clinics/clinic.entity';

@Entity({
  name: 'contact',
})
export class Contact {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @Column({ length: 255 })
  email: string;

  @Column({ type: 'text' })
  body: string;

  // If clinic is left empty, the contact goes to our mailbox.
  @ManyToOne(
    type => Clinic,
    clinic => clinic.contacts,
  )
  clinic: Clinic;
}
