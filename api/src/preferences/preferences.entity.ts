import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'preferences',
})
export class Preference {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;
}
