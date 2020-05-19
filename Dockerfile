FROM ruby:2.6.6-alpine3.11

RUN apk update \
    && apk add --no-cache \
    build-base \
    libxml2-dev \
    libxslt-dev \
    postgresql-dev \
    tzdata \
    git

RUN gem install reek rubocop solargraph rails
