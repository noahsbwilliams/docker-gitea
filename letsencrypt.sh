#!/bin/bash

# Note: 
# The --standalone flag spins up a temporary webserver,
# that allows certbot to complete the ACME challenge.
# This is why we need to docker-compose down before
# running the container to free up port 80.

docker-compose down;

docker run -it --rm --name certbot \
  -v /etc/letsencrypt/:/etc/letsencrypt \
  -v /var/log/letsencrypt:/var/log/letsencrypt \
  -p 80:80 \
  certbot/certbot -t certonly \
  --standalone \
  --email public@noahsbwilliams.com \
  --no-eff-email \
  --agree-tos --renew-by-default \
  -d code.rothanaheavyengineering.com;

docker-compose up -d
