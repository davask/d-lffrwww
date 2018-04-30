FROM davask/d-php:7.0-a2.4-d8.x
MAINTAINER davask <docker@davaskweblimited.com>
USER root

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -;

# Update packages
RUN apt-get update && apt-get install -y \
nodejs;

RUN npm install -g yarn

USER admin
