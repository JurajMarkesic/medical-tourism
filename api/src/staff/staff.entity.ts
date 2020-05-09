import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'staffs',
})
export class Staff {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;
}
