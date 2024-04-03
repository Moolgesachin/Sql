CREATE DATABASE bikes;
USE bikes;
CREATE TABLE oldbikes (
    model INT,
    Name VARCHAR(50),
    price INT);
INSERT INTO oldbikes (model, Name, price) VALUES (2001, 'bajaj', 2800);
INSERT INTO oldbikes (model, Name, price) VALUES (2005, 'Hero', 4000);
INSERT INTO oldbikes (model, Name, price) VALUES (2006, 'activa', 5000);
select * from oldbikes;
CREATE TABLE New_bikes (
    model INT,
    Name VARCHAR(50),
    price INT);
INSERT INTO New_bikes (model, Name, price) VALUES (2020, 'pulser', 120000);
INSERT INTO New_bikes (model, Name, price) VALUES (2021, 'hero', 110000);
INSERT INTO New_bikes (model, Name, price) VALUES (2022, 'activa', 115000);
select * from oldbikes;
select * from New_bikes;