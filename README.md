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
- After setting up Docker and editing `/config/database.yml`, you will need to run a few additional commands: 
1)  Create the docker volume:
    ```
    docker volume create --name=db
    ```

2) Build/start container in background:
    ```
    docker-compose up -d
    ```

3) Ensure images "dj-community-forum-backend_web" and "postgres" are both running by executing:
    ```
    docker ps
    ```
    This should show both images having the status "Up" following by some amount of time. 

4) Create the database by running the following command:
    ```
      docker exec -it rails-app rake db:create
    ```

The rails server should be running on port 3000. Once the database is set up, visit localhost:3000 in your browser.


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
