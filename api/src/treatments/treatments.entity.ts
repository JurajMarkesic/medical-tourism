import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'treatments',
})
export class Treatment {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;
}
