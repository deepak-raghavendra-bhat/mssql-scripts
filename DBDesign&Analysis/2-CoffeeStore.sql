show DATABASEs;

create DATABASE coffee_store;

show databases;

use coffee_store;

create table products (

                id INT AUTO_INCREMENT PRIMARY KEY,
                name VARCHAR(30),
                price DECIMAL(3,2)

);

show TABLEs;

create table customers (
    id INT AUTO_INCREMENT PRIMARY key,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    gender ENUM('M','F'),
    phone_number VARCHAR(11)


);

show TABLEs;

create table orders (
    id int AUTO_INCREMENT primary key,
    product_id INT,
    customer_id int,
    order_time DATETIME,
    Foreign Key (product_id) REFERENCES products(id),
    Foreign Key (customer_id) REFERENCES customers(id)
);

show tables;

select * from products;

alter table products add column coffee_origin VARCHAR(30);

show tables;

alter table products drop column coffee_origin;

desc products;


drop table test;


