use employees;

describe employees;

select * from employees;

select first_name from employees;

select first_name,last_name from employees;

-- where clause

select * from employees where gender = 'F';

select * from employees where gender = 'F' or emp_no > 10022;

select * from employees where gender = 'F' and emp_no > 10022;