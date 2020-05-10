import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'clinicPreferences',
})
export class ClinicPreferences {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;
}
