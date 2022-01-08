# README

This README would normally document whatever steps are necessary to get the
application up and running.

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

How to run

# Install Ruby


## Option 1
* (Optional) Install [rbenv](https://github.com/rbenv/rbenv) on your specific system and follow setup
* Install ruby with ```rbenv install 2.7.3```
* Set local ruby version with ```rbenv local 2.7.3```

## Option 2
* Install Ruby 2.7.3 [using other methods](https://www.ruby-lang.org/en/documentation/installation/)

# Install PostgreSQL

Follow the instructions on the [Postgres website](https://www.postgresql.org/download/) to download Postgres >= 9

# Setup instructions

## Create database, migrate and seed 

* Run ```bin/rails db:create db:migrate db:seed```

## Start server 

* Run ```bin/rails s```

# Run tests

* Tests (model and controller) are located in the ```test/``` folder 
* Run ```bin/rails t``` to run all tests
