import { Injectable, UnauthorizedException, NotAcceptableException } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { JwtService } from '@nestjs/jwt';
import { User } from './../users/user.entity';
import { UsersService } from './../users/users.service';
import { LoginDto, ChangePasswordDto } from './dto';
import { MailerService } from '@nestjs-modules/mailer';

@Injectable()
export class AuthService {
  constructor(
    private readonly jwtService: JwtService,
    private readonly configService: ConfigService,
    private readonly userService: UsersService,
    private readonly mailerService: MailerService,
  ) { }

  async createToken(user: User) {
    return {
      expiresIn: this.configService.get('jwt.ttl'),
      accessToken: this.jwtService.sign({ id: user.id }),
      user: user,
    };
  }

  async validateUser(payload: LoginDto): Promise<any> {
    const user = await this.userService.getByEmailAndPass(payload.email, payload.password);
    if (!user) {
      throw new UnauthorizedException('Wrong login combination!');
    }
    return user;
  }

  async sendResetPasswordEmail(email: string): Promise<any> {
    const user = await this.userService.getByEmail(email);

    if (!user) {
      throw new NotAcceptableException('User with this email not found!')
    }

    // Using email + hashed password as a payload makes the token single-use since the password changes after the reset.
    const token = this.jwtService.sign({ email: user.email, password: user.password }, { expiresIn: '1h' });
    const resetUrl = this.configService.get<string>('url.api') + '/auth/change-password/' + token;

    this
      .mailerService
      .sendMail({
        to: email, // list of receivers
        from: this.configService.get<string>('email.default'),
        subject: 'Password reset on medicro.com', // Subject line
        text: resetUrl, // plaintext body
      })
      .catch((error) => {
        throw new Error('Email could not be sent. Please try again later.');
      });

    return token;
  }

  async changePassword(payload: ChangePasswordDto) {
    const tokenPayload = this.jwtService.decode(payload.token);
    console.log(tokenPayload)
    // @ts-ignore
    const user = await this.userService.getByEmailAndHashedPass(tokenPayload.email, tokenPayload.password);
    console.log(user)
    if (!user) {
      throw new NotAcceptableException('User not found!')
    }

    user.password = payload.password;
    return await this.userService.update(user);
  }
}
