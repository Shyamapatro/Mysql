-- MySql Operators
select 10+20;
create database customer_details;
use customer_details;
create table customer_info( id int not null auto_increment  key, name varchar(45) not null, age int not null,address varchar(255) not null, salary int not null);
insert into customer_info( name, age,address, salary) values("ramesh",25,"amedabad",20000),("khilan",25,"Delhi",15000),("kaushik",23,"Mumbai",16500);
insert into customer_info(name, age,address, salary) values("raj",28,"kolkata",25000),("rahul",29,"jaipur",28000),("rohan",27,"ranchi",29500),("saurabh",24,"Bihar",67000);

select *from customer_info;

select *from customer_info where salary>15000;
select *from customer_info where salary=16500;
select *from customer_info where salary!=20000;
select *from customer_info where salary<>20000;
select *from customer_info where salary>=16500;
select *from customer_info where age>=25 and salary>20000;
select *from customer_info where age=Null;
select *from customer_info where name like 's%';
select *from customer_info where age In (25,27);
select age from customer_info where exists(select age from customer_info where salary>20000);
SELECT * FROM Customer_info WHERE Address LIKE '[ol]';