FROM ruby:3.4.4-bullseye

# - build-essential: Essential packages for building/compiling software from source
# - libpq-dev: PostgreSQL development libraries and headers
# - postgresql-client: PostgreSQL client tools for database connections
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app