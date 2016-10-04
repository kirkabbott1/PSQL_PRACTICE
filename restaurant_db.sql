CREATE TABLE restaurant (
  id serial primary key,
  name varchar,
  distance integer,
  stars integer,
  category varchar,
  favorite_dish varchar,
  does_takeout boolean,
  last_time_ate_there date
);

insert into restaurant values
  (default, 'Chipotle', .2, 4, 'Mexi-Hipster', 'boorito', FALSE, '2016-10-04');

insert into restaurant values
  (default, 'Naan-stop', .2, 5, 'Engine', 'goats', FALSE, '2016-9-27');

insert into restaurant values
  (default, 'CraftSteak', 2142, 5, 'Steak', 'steak', FALSE, '2014-6-23');

SELECT NAME FROM restaurant WHERE STARS = 5;

restaurant_db=# SELECT NAME FROM restaurant WHERE STARS = 5;
    name
------------
 Naan-stop
 CraftSteak
(2 rows)


               ^
restaurant_db=# SELECT FAVORITE_DISH FROM RESTAURANT WHERE STARS = 5;
 favorite_dish
---------------
 goats
 steak
(2 rows)
