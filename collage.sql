create database collage;
USE collage;

CREATE TABLE CSE (
    roll_no INT,
    Name VARCHAR(50),
    joining_date INT);
INSERT INTO CSE (roll_no, Name, joining_date) 
VALUES (101, 'Sachin', 10-6-2010),
(102, 'sai charan', 10-6-2011);
select * from CSE;

CREATE TABLE teams (
    jersy_no INT,
    Name VARCHAR(50),
    Team varchar(50));
INSERT INTO teams (jersy_no, Name, Team) 
VALUES (7, 'Dhoni', 'CSK'),
(18, 'Virat', 'RCB'),
(10, 'Sachin', 'MI'),
(12, 'ghambir', 'KKR');
select * from teams;

CREATE TABLE IPL (
    team varchar(50),
    Matches int,
    won int,
    lost int,
    points int,
    NRR float);
INSERT INTO IPL (team, Matches, won, lost, points, NRR) 
VALUES ('Knight Riders', 3,3,0,6, 2.518),
('royals', 3,3,0,6, 1.29),
('CSK', 3,2,1,4, 0.97),
('super gaints',3,2,1,4, 0.483),
('titans', 3,2,1,4, -0.738),
('sunrisers', 3,1,2,2, 0.204),
('kings', 3,1,2,2, -0.337),
('RCB', 4,1,3,2, -0.876),
('DC', 4,1,3,2, -1.347),
('MI', 3,0,3,0, -1.423);
select * from IPL;

CREATE TABLE IPL_winners (
    year int,
    winner varchar(20));
INSERT INTO IPL_winners (year, winner) 
VALUES (2023, 'CSK'), (2022, 'GT'),(2021, 'CSK'), (2020, 'MI'),(2019,'MI');
select * from IPL_winners;

CREATE TABLE IPL_runnerup (
    year int,
    runner varchar(20));
INSERT INTO IPL_runnerup (year, runner) 
VALUES (2023, 'GT'), (2022, 'RR'),(2021, 'KKR'), (2020, 'DC'),(2019,'CSK');
select * from IPL_runnerup;

CREATE TABLE IPL_winner_runnerup (
    year int,
    runner varchar(20),
    winner varchar(20));
INSERT INTO IPL_winner_runnerup (year, runner, winner) 
VALUES (2023, 'GT','CSK'),
(2022, 'RR', 'GT'),
(2021, 'KKR', 'CSK'), 
(2020, 'DC','MI'),
(2019,'CSK','MI'),
(2018, 'Sun Hyd','CSK');
select * from IPL_winner_runnerup;
drop table IPL_runnerup; 
show tables;