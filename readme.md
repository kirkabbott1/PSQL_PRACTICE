PostgreSQL Exercises

Create Database

Create a database, call it restaurant_db. In your terminal:

$ psql
username=#
Now you are in the PostgresSQL shell. Take a good look at what the prompt looks like.

Now in the prompt execute this command: CREATE DATABASE restaurant_db;. Then execute: \c restaurant_db to switch to restaurant_db as the active database. It should say: You are now connected to database "restaurant_db" as user "username".

Create Database Table

Write a database schema: create a restaurant_db.sql file, in it write a CREATE TABLE statement to create a table called "restaurant". This table will contain the following information, you will use the appropriate data types to represent the info. Please use an auto-incrementing primary key ID:

name
distance (in miles from ATV)
stars
category (type of food)
favorite dish
does takeout?
last time you ate there
Run your file one of two ways:

Copy the "CREATE TABLE" statement and paste it into the PostgreSQL shell
psql restaurant_db < restaurant_db.sql
If the table has been created successfully, you should see "CREATE TABLE" being printed. You can also describe the table schema in the shell using the \d command:

restaurant_db=# \d restaurant
Insert Data

Write INSERT statements to enter data into the restaurant table. You can paste the statements into the psql shell.

Writing Queries

Write queries to get

The names of the restaurants that you gave a 5 stars to
The favorite dishes of all 5-star restaurants
The the id of a restaurant by a specific restaurant name, say 'NaanStop'
restaurants in the category of 'BBQ'
restaurants that do take out
restaurants that do take out and is in the category of 'BBQ'
restaurants within 2 miles
restaurants you haven't ate at in the last week
restaurants you haven't ate at in the last week and has 5 stars
