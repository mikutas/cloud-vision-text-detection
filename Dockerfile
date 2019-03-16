FROM ruby:2.5.4-slim-stretch
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    build-essential libpq-dev libsqlite3-dev nodejs

ARG appname=/my-mojiokoshi
RUN mkdir ${appname}
WORKDIR ${appname}
