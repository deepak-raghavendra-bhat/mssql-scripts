create database test;

use test;

create table address (
	id int,
    house_number int,
    city varchar(20),
    postcode varchar(7)
);

create table people(
	id int,
    first_name varchar(20),
    last_name varchar(20),
    address_id int
);

create table pets(
		id int,
        name varchar(20),
        species varchar(20),
        owner_id int
);

show tables;

alter table address add primary key (id);

desc address;

alter table address drop primary key;

describe people;

alter table people add primary key (id);

describe pets;

alter table pets add primary key (id);

alter table people
add constraint FK_PeopleAddress
foreign key (address_id) references address (id);

alter table people
drop foreign key FK_PeopleAddress;

select * from pets;

aLter table pets
add constraint u_species unique (species);

alter table pets
drop index u_species;

select * from pets;



alter table pets change `species` `animal_type` varchar(20); 


alter table pets change `animal_type` `species` varchar(20); 

alter table pets modify species varchar(30);

describe pets;