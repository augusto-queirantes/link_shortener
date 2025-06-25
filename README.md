# README

Rails link shortener project

## Requirements

- Docker

## Setup

To setup the application just runs a `docker compose up -d`

## Useful commands

`docker exec -it app bash` -> To execute a bash inside the application docker container
`rails s -b 0.0.0.0` -> To execute the server and expose it outside of the container
`rubocop` -> To execute the linter
`rspec` -> To execute the tests
