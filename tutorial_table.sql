show databases;
create database tutorial;
use tutorial;
create table tutorial_tb(id INT NOT NULL AUTO_INCREMENT,title varchar(80) NOT NULL, author varchar(50) NOT NULL, submission_date Date, PRIMARY KEY(id));
select *from tutorial_tb;
drop table tutorial_tb;
create table tutorial_table(id INT NOT NULL AUTO_INCREMENT,title varchar(50) NOT NULL, author varchar(50) NOT NULL, submission_date Date, PRIMARY KEY(id));
select *from tutorial_table;
insert Into tutorial_table(title,author,submission_date) values("Learn mySQl","Sys",now());
insert Into tutorial_table(title,author,submission_date) values("Learn Javascript","ed",now());
insert Into tutorial_table(title,author,submission_date) values("Learn Node","google",now());

