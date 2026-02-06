#!/bin/bash
set -xe
exec > /var/log/user-data.log 2>&1

yum update -y
yum install -y docker

systemctl enable docker
systemctl start docker

# wait until docker is usable
until docker info >/dev/null 2>&1; do
  sleep 5
done

docker pull ghcr.io/strapi/strapi

docker run -d \
  --name strapi \
  --restart unless-stopped \
  -p 1337:1337 \
  -e NODE_ENV=production \
  ghcr.io/strapi/strapi

