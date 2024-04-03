CREATE DATABASE students;
USE students;
CREATE TABLE batch (
    ID INT,
    Name VARCHAR(50),
    Age INT);
INSERT INTO batch (ID, Name, Age) VALUES (01, 'sachin', 28);
INSERT INTO batch (ID, Name, Age) VALUES (02, 'sandeep', 25);
INSERT INTO batch (ID, Name, Age) VALUES (03, 'vijay', 30);
select * from batch;
CREATE TABLE batch1 (
    ID INT,
    Name VARCHAR(50),
    salary INT);
INSERT INTO batch1 (ID, Name, salary) VALUES (01, 'sachin', 2800);
INSERT INTO batch1 (ID, Name, salary) VALUES (02, 'sandeep', 2500);
INSERT INTO batch1 (ID, Name, salary) VALUES (03, 'vijay', 3000);
select * from batch1;
select * from batch;
