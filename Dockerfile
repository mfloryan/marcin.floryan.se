FROM ruby:3.3-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /site

COPY site/Gemfile site/Gemfile.lock ./

RUN bundle install

EXPOSE 4000
EXPOSE 35729
