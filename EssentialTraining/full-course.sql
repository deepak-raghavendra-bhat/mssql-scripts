use world;
-- selecting data
select 'Hello, World';

SELECT * FROM country order by Name limit 5;

select 1+2;

select count(*) from country order by name;


SELECT * FROM country order by Name limit 10, 5;

select Name,code,region,population from country order by code;

select Name,code as ISO,region as Reg,population as Pop from country order by code;

select count(*) as TotalCountry from country;

select count(*) from country where population > 10000000 and continent = 'Europe';

select count(LifeExpectancy) from country;

-- inserting data


use scratch;

select * from customer;

insert into customer (name,address,city,state,zip) values('Fred','123 LAWay','Bedrock','CA','12345');

insert into customer (name,city,state) values('Jim','bangalore','KA');

-- updating data
select * from customer where name like '%im';

select * from customer where name like 'Jim%';

update customer set address = '123 Music Ac',zip = '12454' where name = 'Jim';

update customer set zip = null where name = 'Jim';

-- delete

SELECT * FROM test;

delete from test where a=2;

delete from test;

drop table test;

delete from customer where name like 'Fred' or name like 'Jim';
SELECT * FROM customer;

-- joins

use album;

select * from track;
select * from album;

select *
from album
join track on album.id = track.album_id
order by artist;

select *
from album,track;

-- find databases

use scratch;

show tables;

desc item;

create table test (
id int,
name varchar(20)
);

describe test;

desc test;

drop table if exists test;

select now();

