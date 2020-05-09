import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'amenities',
})
export class Amenity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;
}
