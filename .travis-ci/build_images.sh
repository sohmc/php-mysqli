#!/bin/bash

if [[ -e ./php ]]; then
    IFS=$'\n'
    echo "Reading tags in ./php ..."
    tags=( $(cat ./php) )
    unset IFS
else
    echo "No ./php file found.  Exitting..."
    exit 1
fi

for tag in "${tags[@]}"; do
    sed "s/{{TAG}}/$tag/" ../Dockerfile_Template > ../Dockerfile
    #docker build . --file ./Dockerfile --tag sohmc/php-mysqli:7.4-apache
    #docker push sohmc/php-mysqli:7.4-apache
done
