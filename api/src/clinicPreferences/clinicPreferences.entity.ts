import { Clinic } from 'src/clinics/clinic.entity';
import { Column, Entity, JoinColumn, OneToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'clinicPreferences',
})
export class ClinicPreferences {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @OneToOne(type => Clinic)
  @JoinColumn()
  clinic: Clinic;
}
