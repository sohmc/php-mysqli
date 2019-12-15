# php with mysqli

[![Build
Status](https://travis-ci.org/sohmc/php-mysqli.svg?branch=master)](https://travis-ci.org/sohmc/php-mysqli)

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

At current, only 7.4 tags on `amd64` architecture is supported.  This is
primarily due to the [architecture limitations of Travis
CI](https://docs.travis-ci.com/user/multi-cpu-architectures) and not
wanting to tax their server unnecessarily.

## License

This repository uses the MIT License.

