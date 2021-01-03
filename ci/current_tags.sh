#!/bin/bash

if [[ -e ./php ]]; then
    echo "Deleting old file..."
    rm ./php
fi

PHP_TAGS_URL="https://github.com/docker-library/official-images/raw/master/library/php"

echo "Downloading the latest tag file from ${PHP_TAGS_URL}"
wget ${PHP_TAGS_URL}

echo "Isolating Tag lines..."
sed -i '/^Tags:/!d' ./php

echo "Removing 'Tags: '"
sed -i 's/^Tags: //' ./php

echo "Removing commas and adding newlines"
sed -i 's/, /\n/g' ./php

echo "Adding environment variable prefix"
sed -i 's/^/  - TAG=/g' ./php

echo "Tags ready:"
cat ./php
