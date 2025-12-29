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
Error connecting to Redis on localhost:6379 (Errno::ECONNREFUSED)
1. sudo apt update
sudo apt install redis-server
2. sudo systemctl start redis
3. redis-cli ping
