CREATE DATABASE fruits;
USE fruits;
CREATE TABLE season (
    season varchar(20),
    Name VARCHAR(50),
    price INT);
INSERT INTO season (season, Name, price) VALUES ('winter', 'custardapple', 40);
INSERT INTO season (season, Name, price) VALUES ('summer', 'mango', 25);
INSERT INTO season (season, Name, price) VALUES ('spring', 'grapes', 80);
select * from season;
CREATE TABLE juices (
    Name varchar(20),
    shakes VARCHAR(50),
    price INT);
INSERT INTO juices (Name, shakes, price) VALUES ('mango', 'mangoshake', 40);
INSERT INTO juices (Name, shakes, price) VALUES ('apple', 'applemilkshake', 50);
INSERT INTO juices (Name, shakes, price) VALUES ('badam', 'badamshake', 100);
select * from season;
select * from juices;