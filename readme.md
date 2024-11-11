<p align="center">
    <picture>
        <source media="(prefers-color-scheme: dark)"
            srcset="https://github.com/mentionbb/mentionbb/blob/master/public/ui/images/logo-nightmode.svg">
        <source media="(prefers-color-scheme: light)"
            srcset="https://github.com/mentionbb/mentionbb/blob/master/public/ui/images/logo.svg">
        <img alt="Mention logo" src="https://github.com/mentionbb/mentionbb/blob/master/public/ui/images/logo.svg"
            width="500px">
    </picture>
</p>

# MentionBB with Docker
It allows using MentionBB with Docker. 

## Contents
- PHP 8.3
- Nginx
- PHPMyAdmin
- Git
- Composer

## Requirements
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)

## Setup Via Zip
- Clone this Repo or Download.
- Run `docker compose up --build -d`
- [Download the latest MentionBB files](https://github.com/mentionbb/mentionbb/releases/latest) and download and extract it to the same directory as docker-compose.yml.
- Open `http://localhost:8090`
  - Username: `mention`
  - Password: `sfx`
- Go to sf db and Import `sf.sql`
- Run `php bin/console mention:composer update` or connect tunnel and run `composer update`
  - Or extract the vendor.zip in `src` folder.
- Open `http://localhost` and enjoy!

### More information about the installer: https://github.com/mentionbb/mentionbb?tab=readme-ov-file#install

# License

Mention is a open-source project and licensed under the MIT License(MIT). Please read the [license file](https://github.com/mentionbb/mentionbb/blob/master/license.md).
