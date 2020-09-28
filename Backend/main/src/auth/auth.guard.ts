import { CanActivate, ExecutionContext, Injectable, Logger, UnauthorizedException } from '@nestjs/common';
import { Request } from 'express';
import { FirebaseAuthenticationService } from '@aginix/nestjs-firebase-admin/dist';
import * as admin from 'firebase-admin';
import { User } from '../users/user.schema';
import { UsersService } from '../users/users.service';
import { RawUserPayload, UserPayload } from './get-user.decorator';
import { validate } from 'class-validator';
import * as fs from 'fs';
import { ConfigKey, ConfigService } from '../config/config.service';
import { Types } from 'mongoose';

let written = false;

@Injectable()
export class AuthGuard implements CanActivate {
  private readonly logger = new Logger('AuthGuard');

  constructor(
      private readonly firebaseAuth: FirebaseAuthenticationService,
      private readonly usersService: UsersService,
      private readonly configService: ConfigService
  ) {
    this.logger.debug(`Created AuthGuard`);
  }

  async canActivate(
      context: ExecutionContext,
  ): Promise<boolean> {
    if (this.configService.get(ConfigKey.DISABLED_AUTH_GUARD) === 'true') {
      context.switchToHttp().getRequest().user = new UserPayload({
        _id: new Types.ObjectId('5f6a22e3075f5b523f6085a4') as any,
        email: 'hoc081098@gmail.com',
        uid: 'l9StgzQlR1h3XpaWCf3juyYgG772'
      });
      return true;
    }

    const request = context.switchToHttp().getRequest<Request>();
    const decodedIdToken = await this.decodeToken(request);

    this.logger.debug(`Token: ${JSON.stringify(decodedIdToken)}`);

    let user: User;
    try {
      user = await this.usersService.findByUid(decodedIdToken.uid);
    } catch (e) {
      this.logger.error(`Error when finding user: ${e}`);
      throw new UnauthorizedException();
    }

    const merged: RawUserPayload = {
      ...decodedIdToken,
      ...(user?.toObject() ?? { _id: null }),
    };
    const payload = new UserPayload(merged);

    try {
      const errors = await validate(payload);
      this.logger.debug(`Errors: ${JSON.stringify(errors)} ${payload._id}`);

      if (errors === null || errors === undefined || errors.length === 0) {
        (request as any).user = payload;
        this.logger.debug(`Payload: ${JSON.stringify(payload)}`);
        return true;
      }
    } catch (e) {
      this.logger.error(`Error when validating payload: ${e}`);
      throw new UnauthorizedException();
    }
  }

  /**
   * @throws UnauthorizedException
   * @param request
   */
  private async decodeToken(request: Request): Promise<admin.auth.DecodedIdToken> {
    const authHeaders = request.headers.authorization;
    if (!authHeaders) {
      this.logger.error('Missing authHeaders');
      throw new UnauthorizedException();
    }

    const token = authHeaders.split(' ')[1];
    if (!token) {
      this.logger.error('Missing token');
      throw new UnauthorizedException();
    }
    this.debugToken(token);

    let decodedIdToken: admin.auth.DecodedIdToken;
    try {
      decodedIdToken = await this.firebaseAuth.verifyIdToken(token);
    } catch (e) {
      this.logger.error(`Error when verifying token: ${e}`);
      throw new UnauthorizedException('Error when verifying token');
    }
    if (!(decodedIdToken?.uid)) {
      this.logger.error('Error: missing decodedIdToken or decodedIdToken.uid');
      throw new UnauthorizedException('Error invalid decoded token');
    }

    return decodedIdToken;
  }

  private debugToken(token: string) {
    if (this.configService.get(ConfigKey.WRITE_TOKEN_TO_FILE) !== 'true') {
      return;
    }

    if (written) return;

    written = true;
    fs.writeFile('./token.txt', token, {}, (error) => {
      if (error) {
        throw error;
      }
    });
  }
}
