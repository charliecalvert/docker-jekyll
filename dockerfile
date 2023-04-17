# Create Jekyll container.
FROM ruby:3.2.0-alpine3.17

# Install Jekyll and dependencies.
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Install Jekyll.
# RUN gem install jekyll bundler
RUN gem update bundler && gem install bundler jekyll