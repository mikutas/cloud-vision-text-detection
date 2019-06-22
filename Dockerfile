FROM ruby:2.5.4-slim-stretch
RUN apt-get update -qq \
 && apt-get install -y --no-install-recommends \
    build-essential libpq-dev libsqlite3-dev nodejs \
 && rm -rf /var/lib/apt/lists
WORKDIR /cloud-vision-text-detection
