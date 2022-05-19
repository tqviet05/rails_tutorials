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



# SELECT "relationships".* 
# FROM "relationships" 
# WHERE "relationships"."follower_id" = $1 /* loading for inspect */ LIMIT $2 

# SELECT "users".* 
# FROM "users" 
# INNER JOIN "relationships" ON "users"."id" = "relationships"."followed_id" 
# WHERE "relationships"."follower_id" = $1 /* loading for inspect */ LIMIT $2