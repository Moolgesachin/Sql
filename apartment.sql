CREATE DATABASE apartment;
USE apartment;
CREATE TABLE A_BLOCK (
    flat_no INT,
    Name VARCHAR(50),
    cost INT);
INSERT INTO A_BLOCK (flat_no, Name, cost) VALUES (101, 'Sachin', 800000);
INSERT INTO A_BLOCK (flat_no, Name, cost) VALUES (201, 'sandeep', 400000);
INSERT INTO A_BLOCK (flat_no, Name, cost) VALUES (301, 'vijay', 500000);
select * from A_BLOCK;
CREATE TABLE B_BLOCK (
    flat_no INT,
    Name VARCHAR(50),
    cost INT);
INSERT INTO B_BLOCK (flat_no, Name, cost) VALUES (201, 'vamshi', 1200000);
INSERT INTO B_BLOCK (flat_no, Name, cost) VALUES (202, 'radhika', 1100000);
INSERT INTO B_BLOCK (flat_no, Name, cost) VALUES (203, 'sachin', 1105000);
select * from A_BLOCK;
select * from B_BLOCK;