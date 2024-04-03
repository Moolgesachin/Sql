CREATE DATABASE pool_matches;
USE pool_matches;
CREATE TABLE team_A (
    Team_Name VARCHAR(50),
    points INT);
INSERT INTO team_A (Team_Name, points) VALUES ('INDIA', 8);
INSERT INTO team_A (Team_Name, points) VALUES ('Pakistan', 4);
INSERT INTO team_A (Team_Name, points) VALUES ('Srilanka', 2);
select * from team_A;
CREATE TABLE team_B (
    Team_Name VARCHAR(50),
    points INT);
INSERT INTO team_B (Team_Name, points) VALUES ('Austrila', 8);
INSERT INTO team_B (Team_Name, points) VALUES ('West Indies', 4);
INSERT INTO team_B (Team_Name, points) VALUES ('Newzealand', 2);
select * from team_A;
select * from team_B;