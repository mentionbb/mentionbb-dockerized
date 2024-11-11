# MentionBB with Docker

<p align="center">
    <picture>
        <source media="(prefers-color-scheme: dark)"
            srcset="https://raw.githubusercontent.com/mentionbb/mentionbb/master/public/ui/images/logo-nightmode.svg">
        <source media="(prefers-color-scheme: light)"
            srcset="https://raw.githubusercontent.com/mentionbb/mentionbb/master/public/ui/images/logo.svg">
        <img alt="Mention logo" src="https://raw.githubusercontent.com/mentionbb/mentionbb/master/public/ui/images/logo.svg"
            width="500px">
    </picture>
</p>

---

<p align="center">It allows using MentionBB with Docker.</p>

## Contents
- PHP 8.3
- Nginx
- PHPMyAdmin
- Git
- Composer

## Requirements
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)

## Setup Via command-line (Windows)
- Clone this repo or download.
- Run `docker compose up --build -d`
- Start `winsetup.ps1` on PowerShell.
- All files download and extracted to www folder.

This command-line interface download and install latest MentionBB release.

### If PowerShell gives an unauthorized error, use the following command and run it again.
`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

## Setup Via Zip
- Clone this Repo or Download.
- Run `docker compose up --build -d`
- [Download the latest MentionBB files](https://github.com/mentionbb/mentionbb/releases/latest) and download and extract it to the www folder.

*For both installations, all files must be in `www` folder.

## Install MentionBB
- Open `https://local.dev.com:8090`
  - Username: `mention`
  - Password: `sfx`
- Go to sf db and Import `sf.sql`
- Connect tunnel and run `composer update`
  - Or extract the src/vendor.zip in same directory.
- Open `https://local.dev.com/` and enjoy!

### More information about the installer: https://github.com/mentionbb/mentionbb?tab=readme-ov-file#install

# License
Mention is a open-source project and licensed under the MIT License(MIT). Please read the [license file](https://github.com/mentionbb/mentionbb/blob/master/license.md).
