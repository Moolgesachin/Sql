create database functions;
use functions;

#-- Sql Aggregate functions--#

create table sales(
sale_id int primary key, 
product_name varchar(25),
sale_date date,
quantity int,
unit_price decimal(10, 2));

insert into sales(sale_id,product_name,sale_date,quantity,unit_price) values
(1, 'tablets', '2022-01-23', 4, 5000),
(2, 'samsung', '2022-02-25', 3, 4000),
(3, 'redmi', '2022-04-02', 5, 110000),
(4, 'macbook', '2022-07-25', 9, 12000),
(5, 'apple phone', '2022-03-25', 10, 20000);

#--count();--#
select count(*) as total_sales from sales;

#--sum();--#
select sum(quantity) as total_quantity, sum(unit_price*quantity) as total_profit from sales;

#--Avg();--#
select avg(unit_price) as avg_price from sales;

#--MIN(); and MAX();--#
select min(unit_price) as min_price, max(unit_price) as max_price from sales;

#--group by--#
select product_name, sum(quantity) as total_quantity from sales group by product_name;

#--Having--#
select product_name, sum(quantity) as total_quantity from sales group by product_name having total_quantity>3;
select product_name, sum(unit_price) as total_profit from sales group by product_name;


#--string functions--#

create table employees(
emp_id int primary key,
fname varchar(25),
lname varchar(25),
email varchar(50),
salary decimal(10,2));

insert into employees(emp_id,fname,lname,email,salary) values
(1,'sachin','moolge','sachin.moolge@sample.com',30000),
(2,'vijay','kumar','vijay.kumar@sample.com',40000),
(3,'sandeep','ch','sandeep.ch@sample.com',45000),
(4,'sai','charan','sai.charan@sample.com',35000);

#--concat()---#
select CONCAT(fname,' ',lname) as fullname from employees;

#--length()--#
select fname, length(fname) as name_length from employees;

#--Upper(), lower()--#
select fname, upper(fname) as upper_name, lower(fname) as lower_name from employees;

#-- substring--#
select fname, substring(fname,1,4) as substring_name from employees;

#--Left() and right()--#
select fname, left(fname,3) as left_name, right(fname,2) as right_name from employees;

#--replace()--#
select email, replace(email, '@sample', '@amazon') as new_email from employees;

#-----scalar functions-----#

create table employees_dn(
emp_id int primary key,
fname varchar(25),
lname varchar(25),
email varchar(50),
salary decimal(10,2));

insert into employees_dn(emp_id,fname,lname,email,salary) values
(1,'sachin','moolge','sachin.moolge@sample.com',30000.53),
(2,'vijay','kumar','vijay.kumar@sample.com',40000.55),
(3,'sandeep','ch','sandeep.ch@sample.com',45000.43),
(4,'sai','charan','sai.charan@sample.com',35000.23);

select upper(fname) as upper_name, lower(fname) as lower_name from employees_dn;
select concat(fname,' ',lname) as fullname from employees_dn;

#--round() for rouning of salary--#
select emp_id, round(salary) as roundoff_salary from employees_dn;

#---numeric function--#

create table numbers(
id int auto_increment primary key,
v1 int, v2 int);
insert into numbers(v1,v2) values
(10,2),
(12,3),
(4,6),
(2,9);

select * from numbers;

#--sum();--#
select sum(v1) as totalvalue1, sum(v2) as totalvalue2 from numbers;

#--Avg();--#
select avg(v1) as averagev1, avg(v2) as averagev2 from numbers;

#--count();--#
select count(*) as total_values from numbers;

#--MIN(); and MAX();--#
select min(v1) as minv1, max(v1) as maxv1 from numbers;
select min(v2) as minv2, max(v2) as maxv2 from numbers;

#-- round()--round numeric values--#
select round(v1/4) as rounded_v1, round(v2/3) as rounded_v2 from numbers;

#--power() example 2power of 3 (2cube)--#
select power(v1,2) as power_squarev1, power(v2,3) as power_cubev2 from numbers;

#--sqrt-- calculates the square root-#
select sqrt(v1) as squalreroot_v1, sqrt(v2) as squalreroot_v2 from numbers;



