FROM php:7-cli

RUN curl https://packagecloud.io/gpg.key | apt-key add - &&\
    echo "deb http://packages.blackfire.io/debian any main" > /etc/apt/sources.list.d/blackfire.list &&\
    apt-get update &&\
    apt-get install blackfire-agent blackfire-php

COPY ./php-safe.ini /usr/local/etc/php/conf.d/
