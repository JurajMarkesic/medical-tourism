import { User } from 'src/users/user.entity';
import { Column, Entity, JoinColumn, OneToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity({
  name: 'userPreferences',
})
export class UserPreferences {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  name: string;

  @OneToOne(type => User)
  @JoinColumn()
  user: User;
}
