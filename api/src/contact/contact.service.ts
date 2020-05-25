import { CacheStore, CACHE_MANAGER, Inject, Injectable, NotAcceptableException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LoggerService } from '../common/LoggerService';
import { ContactCreateDto } from './dto';
import { Contact } from './contact.entity';
import { MailerService } from '@nestjs-modules/mailer';

@Injectable()
export class ContactsService {
  constructor(
    @InjectRepository(Contact)
    private readonly contactRepository: Repository<Contact>,
    private logger: LoggerService,
    @Inject(CACHE_MANAGER) private readonly cacheStore: CacheStore,
    private readonly mailerService: MailerService,
  ) { }

  async getAll() {
    let contact = await this.cacheStore.get('all_contact');

    if (contact) {
      this.logger.log('Getting all contact from cache.');
      return contact;
    }

    contact = await this.contactRepository.find();
    this.cacheStore.set('all_contact', contact, { ttl: 20 });

    this.logger.log('Querying all contact!');
    return contact;
  }

  async get(id: number): Promise<Contact> {
    return this.contactRepository.findOne(id);
  }

  async getByName(name: string) {
    return await this.contactRepository
      .createQueryBuilder('contact')
      .where('contact.name = :name')
      .setParameter('name', name)
      .getOne();
  }

  async create(payload: ContactCreateDto): Promise<Contact> {
    const contact = await this.contactRepository.save(this.contactRepository.create(payload));

    const toEmail = contact.clinic ? contact.clinic.email : 'medicro@primrose.agency';

    this
      .mailerService
      .sendMail({
        to: toEmail, // list of receivers
        from: `"${contact.name}" ${contact.email}`,
        subject: 'New contact from medicro.com', // Subject line
        text: contact.body, // plaintext body
      })
      .catch((error) => {
        throw new Error('Email could not be sent. Please try again later.');
      });

    return contact;
  }
}
