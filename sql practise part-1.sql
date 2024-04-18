create database operators;
use operators;
create table employee_info(
id int primary key,
fist_name varchar(20),
Last_name varchar(20),
age int,
email varchar(50),
salary decimal(10,2),
departmant varchar(50));

insert into employee_info(id,fist_name,Last_name,age,email,salary,departmant) values
(1, 'sachin', 'moolge', 30, 'sachin.moolge@sample.com', 30000, 'Business Analyst'),
(2, 'sai', 'charan', 25, 'sai.charan@sample.com', 20000, 'service operations'),
(3, 'sandeep', 'sandy', 32, 'sandeep.sandy@sample.com', 22000, 'Analyst'),
(4, 'vijay', 'kumar', 33, 'vijay.kumar@sample.com', 36000, 'senior Analyst'),
(5, 'vinod', 'tuniki', 35, 'vinod.tuniki@sample.com', 45000, 'finance'),
(6, 'radhika', 'pandit', 33, 'radhika.pandit@sample.com', 48000, 'payroll'),
(7, 'anusha', 'muthoji', 40, 'anusha.muthoji@sample.com', 60000, 'HR manager'),
(8, 'kumari', 'anusha', 40, 'kumari.anusha@sample.com', 28000, 'associate'),
(9, 'sridevi', 'ch', 25, 'sridevi.ch@sample.com', 30000, 'senior associate'),
(10, 'anil', 'kumar', 22, 'anil.kumar@sample.com', 15000, 'trainee'),
(11, 'arun', 'kumar', 25, 'arun.kumar@sample.com', 20000, 'trainee'),
(12, 'vamshi', 'reddy', 25, 'vamshi.reddy@sample.com', 40000, 'trainer'),
(13, 'srinivas', 'bestha', 31, 'srinivas.bestha@sample.com', 65000, 'data engineer'),
(14, 'vinay', 'kumar', 33, 'vinay.kumar@sample.com', 45000, 'analyst'),
(15, 'abhiram', 'goud', 32, 'abhiram.goud@sample.com', 55000, 'HR manager'),
(16, 'sunny', 'sandeep', 38, 'sunny.sandeep@sample.com', 70000, 'payroll manager'),
(17, 'rita', 'rao', 31, 'rita.rao@sample.com', 30000, 'HR requiter'),
(18, 'shipa', 'reddy', 32, 'shilpa.reddy@sample.com', 68000, 'marketing'),
(19, 'jhon', 'jhonny', 33, 'jhon.jhonny@sample.com', 70000,'senior markiting'),
(20, 'david', 'jhon', 34, 'david.jhon@sample.com', 65000,'trainee');
select * from employee_info;

#---- comparison operator-----#
select * from employee_info where age>25;
select * from employee_info where salary>25000;
select * from employee_info where departmant='trainee';
select * from employee_info where salary >50000;
select * from employee_info where departmant!= 'trainee';

#---Arthimatic operators---#
select sum(salary) as total_salary from employee_info where departmant='trainee';
select avg(salary) as avg_salary from employee_info where departmant='analyst';
select departmant, sum(salary) as total_salary from employee_info where departmant in ('trainee', 'analyst') group by departmant;

#----logical operator---#
select * from employee_info where departmant='trainee' and salary >= 20000;
select * from employee_info where departmant='trainee' or salary >50000;
select * from employee_info where not (departmant='trainee' and salary>600000);

#---- concation operators ----#
select id, concat(fist_name, ' ' ,  Last_name) as full_name from employee_info;

#--like operator----# find department with starting senior--##
select * from employee_info where departmant like 'senior%';
#-- finding departmant with names containing analyst--#
select * from employee_info where departmant like '%analyst%';
#-- finding departmant with names ending with associate --#
select * from employee_info where departmant like '%associate';

#-----------in operator-----------------#
select * from employee_info where departmant in ('analyst', 'trainee', 'finance');
select * from employee_info where age in (25);

#------is null /  is not null --------#
select * from employee_info where fist_name or last_name is null;
select * from employee_info where fist_name or last_name is not null;

#------between operator------#
select * from employee_info where age between 25 and 30;
select * from employee_info where age not between 25 and 30;