# php with mysqli

[![Github Workflows 
Status](https://github.com/sohmc/php-mysqli/workflows/Docker%20Image%20CI/badge.svg?branch=main)](https://github.com/sohmc/php-mysqli/actions?query=workflow%3A%22Docker+Image+CI%22)
[![Docker 
Pulls](https://img.shields.io/docker/pulls/sohmc/php-mysqli)](https://hub.docker.com/r/sohmc/php-mysqli)

This Dockerfile is based on [Docker Hub's official php
image](https://hub.docker.com/_/php).  The goal of this project is
simple: [Install the mysqli
driver](https://www.php.net/manual/en/book.mysqli.php).

If you're like me, you likely have php code that you really don't want
to port over to
[PDO_MySQL](https://www.php.net/manual/en/ref.pdo-mysql.php).

Since mysqli is still supported, this docker image installs the driver
but leaves everything else the same.  For all intents and purposes, you
may continue to use the official documentation to deploy this container.

## Tagging conventions

This repository will attempt (but with absolutely no guarantees) to keep
in line with official releases of the official repository.  As such,
containers will append `-mysqli` to the end of the repo name, like so:

```
php-mysqli:7.4-apache
php-mysqli:7.4-fpm
php-mysqli:7.4-buster
```

The tags will continue to be the same as the official repository,
indicating the version number and varient.

Additionally, with the release of PHP 8.0, this repository will only
pull the latest 7.4 images and will no longer pull individual 7.4.x
patch images.  For complete details, please see "Tag Strategy" below.

### Tag Strategy

To decrease the load on Github's servers, this repository will always
pull the following images:

- PHP 8 Latest
  - PHP 8.x Latest
  - PHP 8.x.x Latest
- PHP 7 Latest
  - PHP 7.x Latest

This repository will only pull the latest patch version of each minor
version of PHP 8 only.

## License

This repository uses the MIT License.

