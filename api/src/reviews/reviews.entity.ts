import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'reviews',
})
export class Review {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;
}
