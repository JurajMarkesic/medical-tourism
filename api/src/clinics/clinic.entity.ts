import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'clinics',
})
export class Clinic {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @Column({ length: 500 })
  address: string;
}
