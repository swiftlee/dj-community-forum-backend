# Getting Started

Some prequisites are required to get this project running smoothly. I 100% recommend using the Docker image that we've provided to run the project consistently.

## Prerequisites
- Docker (optional, but highly recommended for development) <br/>

***If not using docker:***
- Ruby (v2.7.1)
- Rake (v13.0.1)
- Rails (v6.0.2.2)
- Node (v12.x)
- npm (v6.14.4 - this can be ignored as long as you have yarn) 
- yarn (1.22.4)

## Setting up the environment via Docker
1. Make sure that you have Docker installed whether you be on Windows, MacOS, Linux (and its many distros).
2. Run the following command on your host OS: `curl -L -o docker-rails-container-setup.sh "https://drive.google.com/uc?export=download&id=1mGL-MfYj1TKGt-Ass3kt8BV26Dqs0Pi1" && bash docker-rails-container-setup.sh`
3. Once this has complete, you can connect to your new container using `docker -it rails-app bash`
4. Note that the `user` you are authenticated as has a default password of "password". You can change this using the `passwd` command.
5. You can simply `git clone` this repository now!

## Configuring the database
- By default you will be missing `/config/database.yml`. You'll need to add this file yourself and setup your PostgreSQL database to connect to the Rails app. This is the default `database.yml` that was generated for the project as a guideline.

```yml
# PostgreSQL. Versions 9.3 and up are supported.
#
# Install the pg driver:
#   gem install pg
# On macOS with Homebrew:
#   gem install pg -- --with-pg-config=/usr/local/bin/pg_config
# On macOS with MacPorts:
#   gem install pg -- --with-pg-config=/opt/local/lib/postgresql84/bin/pg_config
# On Windows:
#   gem install pg
#       Choose the win32 build.
#       Install PostgreSQL and put its /bin directory on your path.
#
# Configure Using Gemfile
# gem 'pg'
#
default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # https://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: dj_community_forum_backend_development

  # The specified database role being used to connect to postgres.
  # To create additional roles in postgres see `$ createuser --help`.
  # When left blank, postgres will use the default role. This is
  # the same name as the operating system user that initialized the database.
  #username: dj_community_forum_backend

  # The password associated with the postgres role (username).
  #password:

  # Connect on a TCP socket. Omitted by default since the client uses a
  # domain socket that doesn't need configuration. Windows does not have
  # domain sockets, so uncomment these lines.
  #host: localhost

  # The TCP port the server listens on. Defaults to 5432.
  # If your server runs on a different port number, change accordingly.
  #port: 5432

  # Schema search path. The server defaults to $user,public
  #schema_search_path: myapp,sharedapp,public

  # Minimum log levels, in increasing order:
  #   debug5, debug4, debug3, debug2, debug1,
  #   log, notice, warning, error, fatal, and panic
  # Defaults to warning.
  #min_messages: notice

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: dj_community_forum_backend_test

# As with config/credentials.yml, you never want to store sensitive information,
# like your database password, in your source code. If your source code is
# ever seen by anyone, they now have access to your database.
#
# Instead, provide the password as a unix environment variable when you boot
# the app. Read https://guides.rubyonrails.org/configuring.html#configuring-a-database
# for a full rundown on how to provide these environment variables in a
# production deployment.
#
# On Heroku and other platform providers, you may have a full connection URL
# available as an environment variable. For example:
#
#   DATABASE_URL="postgres://myuser:mypass@localhost/somedatabase"
#
# You can use this database configuration with:
#
#   production:
#     url: <%= ENV['DATABASE_URL'] %>
#
production:
  <<: *default
  database: dj_community_forum_backend_production
  username: dj_community_forum_backend
  password: <%= ENV['DJ_COMMUNITY_FORUM_BACKEND_DATABASE_PASSWORD'] %>
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
