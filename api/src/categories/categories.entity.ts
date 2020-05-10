import { Column, Entity, ManyToOne, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { Treatment } from '../treatments/treatments.entity';

@Entity({
  name: 'categories',
})
export class Category {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @OneToMany(
    type => Treatment,
    treatment => treatment.category,
  )
  treatments: Treatment[];

  @ManyToOne(
    type => Category,
    category => category.children,
  )
  parent: Category;

  @OneToMany(
    type => Category,
    category => category.parent,
  )
  children: Category[];
}
