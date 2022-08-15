create database db1;
USE db1;
CREATE TABLE countries( 
COUNTRY_ID varchar(2) NOT NULL,
COUNTRY_NAME varchar(40),
REGION_ID decimal(10,0),
primary key(COUNTRY_ID)
);
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
VALUES (1, 'India', 505);
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
VALUES (2, 'Srilanka', 502);
DELETE FROM Countries WHERE country_id=1;
select *from countries;

