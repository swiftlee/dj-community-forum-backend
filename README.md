# Getting Started

Some prequisites are required to get this project running smoothly. I 100% recommend using the Docker image that we've provided to run the project consistently.

## Prerequisites
- Docker (heavily recommended, I won't write in the other dependencies since our Docker image handles it all)

## Configuring the database
- By default you will be missing `/config/database.yml`. You'll need to add this file yourself and setup your PostgreSQL database to connect to the Rails app. This is the default `database.yml` that was generated for the project as a guideline.

```yml

default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: postgres
  pool: 5

development:
  <<: *default
  database: dj-community-forum-db


test:
  <<: *default
  database: myapp_test
```
## Running the project
TBA


Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
