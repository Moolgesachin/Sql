create database team;
use team;
create table team_info(
id integer auto_increment,
name varchar(25),
gender Varchar(25),
age integer,
primary key(id));
show tables;
insert into team_info(name, gender, age)
values
('sachin','M',30),
('sandeep','M',25),
('sunny','M',26),
('aparna','F',22),
('anusha','F',25),
('vijay','M',Null),
('shankar','M',Null);
select * from team_info;

#updating the null values

update team_info set age=30 where id=6;
update team_info set age=32 where id=7;
select * from team_info;

#deleteing the record
delete from team_info where id=3;
select * from team_info;

#using alter to add the column

alter table team_info add phonenumber integer;
select * from team_info;
update team_info set phonenumber=1234567890 where id=1;

select * from team_info;
update team_info set phonenumber=789456123 where id=2;
update team_info set phonenumber=456789123 where id=4;
select * from team_info;

#using alter to drop the column
alter table team_info drop phonenumber;

select * from team_info;