FROM ruby:3.2-slim

# Install essential build tools and Node.js
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    npm \
    git \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Update Node.js and npm
RUN npm install -g n && n stable
RUN npm install -g yarn

# Set working directory
WORKDIR /site

# Copy package file for Ruby and Yarn
COPY site/Gemfile* ./
COPY site/package.json ./
COPY site/yarn.lock ./

# Install Ruby dependencies
RUN bundle install

# Install Node.js dependencies
RUN yarn install

# Expose Jekyll default port
EXPOSE 4000
EXPOSE 35729
