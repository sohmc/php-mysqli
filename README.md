# php with mysqli

[![Build and Deploy - PHP 8.1 Variants](https://github.com/sohmc/php-mysqli/actions/workflows/build-8-1-image.yml/badge.svg)](https://github.com/sohmc/php-mysqli/actions/workflows/build-8-1-image.yml)
[![Build and Deploy - PHP 8.2 Variants](https://github.com/sohmc/php-mysqli/actions/workflows/build-8-2-image.yml/badge.svg)](https://github.com/sohmc/php-mysqli/actions/workflows/build-8-2-image.yml)
[![Build and Deploy - PHP 8.3 Variants](https://github.com/sohmc/php-mysqli/actions/workflows/build-8-3-image.yml/badge.svg)](https://github.com/sohmc/php-mysqli/actions/workflows/build-8-3-image.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/sohmc/php-mysqli)](https://hub.docker.com/r/sohmc/php-mysqli)

> [!IMPORTANT]
> **As of 2/13/2024**, this repo will no longer maintain mysqli images for php due to aggressive [rate limiting from Dockerhub](https://docs.docker.com/docker-hub/usage/).  If you require this image, please feel free to review the [`Dokcerfile_Template`](ci/Dockerfile_Template) and pull the image best suited for your needs.

This Dockerfile is based on [Docker Hub's official php image](https://hub.docker.com/_/php).  The goal of this project is
simple: [Install the mysqli driver](https://www.php.net/manual/en/book.mysqli.php).

If you're like me, you likely have php code that you really don't want to port over to [PDO_MySQL](https://www.php.net/manual/en/ref.pdo-mysql.php).

Since mysqli is still supported, this docker image installs the driver but leaves everything else the same.  For all intents and purposes, you may continue to use the official documentation to deploy this container.

## Tagging conventions

This repository will attempt, using Github Actions on a daily schedule, to keep in line with official releases of the official repository.  As such, containers will append `-mysqli` to the end of the repo name, like so:

```
php-mysqli:8-apache
php-mysqli:8-fpm
php-mysqli:8-buster
```

The tags will continue to be the same as the official repository, indicating the version number and variant.

PHP has stopped supporting 
[php 7 on Nov. 28, 2022](https://www.php.net/eol.php) and [php 8.0 on Nov. 25, 2023](https://www.php.net/eol.php).  php 8.1 is now only receiving security updates.

As a result, only php 8.1, 8.2, and 8.3 will be built.  As minor versions are released, I will update this section accordingly.  If you happen to catch it before I do, please feel free to create an issue.

### Tag Strategy

To decrease the load on Github's servers, this repository will always pull the following images:

- PHP 8 Latest
  - PHP 8.1.x Latest
  - PHP 8.2.x Latest
  - PHP 8.3.x Latest

Previous version images are available in [Docker Hub](https://hub.docker.com/r/sohmc/php-mysqli) by their specific tag name.

Using Docker's [qemu action](https://github.com/docker/setup-qemu-action), this repository will attempt to provide images for all supported architectures.  The only architecture that is known to not be supported is `arm32v5`.

## License

The PHP image created by Docker is released via the MIT license.  Likewise, the php-mysqli image created by this repository is also released via the MIT license.

All code written within and maintained within `.github/workflows/` and `ci/` directories are released via AGPL 3.0.


# Future of this repository

On January 1, 2026 (yes, that's twenty-twenty six), this repo will be set to be archived.  I have migrated my work to nodejs and do not need this image anymore.  If you wish to continue these builds, please feel free to let me know and I'd be happy to migrate the repo to you.

