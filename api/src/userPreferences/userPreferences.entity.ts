import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'userPreferences',
})
export class UserPreferences {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;
}
