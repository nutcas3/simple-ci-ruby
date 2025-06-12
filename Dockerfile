# syntax = docker/dockerfile:1

FROM ruby:3.2.2-slim as base

# Install dependencies
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs npm git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set working directory
WORKDIR /app

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy application code
COPY . .

# Precompile assets
RUN bundle exec rake assets:precompile

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
