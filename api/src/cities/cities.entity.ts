import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'cities',
})
export class City {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;
}
