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


SELECT FAVORITE_DISH FROM RESTAURANT WHERE STARS = 5;

select id from restaurant where name = 'Naan-stop';

select * from restaurant where does_takeout = True;

select name from restaurant where does_takeout = true and category = 'CHIKIN';

select * from restaurant where distance < 2;

select * from restaurant where last_time_ate_there >= current_date - interval '2 weeks' and stars = 4;

select * from restaurant order by distance;

select * from restaurant order by distance limit 2;

select * from restaurant order by stars desc limit 2;

select category, count(*) from restaurant group by category;

select avg(stars), category from restaurant group by category;

select round(avg(stars), 2), category from restaurant group by category;
