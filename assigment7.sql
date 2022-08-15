create database assigment_7;
use assigment_7;
drop table facebook;
create table facebook (
                    user_id int not null  ,
                    name varchar(50),
                   account varchar(70),
                  createdAt date,
                 age int   
              );

insert into facebook (user_id,name, account, createdAt, age)
               values(1,"raj","facebook","2018-04-06",16),
                (2,"mani","instagram","2019-12-15",22),
                (3,"raja","twitter","2020-02-12",27),
                (4,"jhony","instagram","2022-03-19",25),
                (5,"rajesh","linkedin","2022-06-29",28);

with cte as (Select name,account,createdAt from facebook
where createdAt between "2021-11-20" and "2022-04-13")
select count(account) from cte where account="instagram";

SELECT name,account, CASE 
when account="facebook" then 1
when account="gmail" then 2
when account="twitter" then 3
when account="linkedin" then 4
else 0
end as result
from facebook;


select name, account, case 
when age<=20 then "underage"
when 20<age<=50 then "eligible for getting benefit"
when 50<age<=75 then "eligible for special benefit"
else 0
end as result

from facebook;

select *from facebook;


ALTER TABLE facebook
ADD last_name varchar(20);
-- ALTER TABLE facebook
-- DROP COLUMN last_name;
select *from facebook;




-- Next 
drop table table_1;
drop table t2;

CREATE TABLE table_1 (
    id INT PRIMARY KEY,student_name varchar(20),class int not null
);

CREATE TABLE t2 (
    id INT PRIMARY KEY,student_name varchar(20),class int not null
);

INSERT INTO table_1 VALUES (1,"Raj",8),(2,"jacky",9),(3,"joy",11);
INSERT INTO t2 VALUES (2,"jacky",9),(3,"sheennu",12),(4,"rohan",10);



SELECT count(student_name)
FROM (
    SELECT id, student_name FROM table_1 
    UNION 
    SELECT id, student_name FROM t2 )t;
drop table employee;    
create table employee(first_name varchar(20),last_name varchar(25),employee_id int not null);
insert into employee(first_name,last_name,employee_id) values("karan","garg",102),("akashy","attri",103),("shyama","patro",104),("himanshu", "kumar",105),(null,"roy",102);
select *from employee;

SELECT * from employee 
	order by(CASE
	WHEN first_name IS NULL THEN last_name
    ELSE first_name
END) DESC;

SELECT * from employee 
	order by(CASE
	WHEN first_name IS NULL THEN last_name
    ELSE first_name
END) asc;


ALTER TABLE employee
ADD date_of_joining date;
UPDATE employee   
SET date_of_joining = '2022-10-3'  
WHERE employee_id = 103;  
UPDATE employee   
SET date_of_joining = '2021-9-3'  
WHERE employee_id = 104;
UPDATE employee   
SET date_of_joining = '2022-7-12'  
WHERE employee_id = 105; 
UPDATE employee   
SET date_of_joining = null  
WHERE employee_id = 102; 

select *from  employee;  

ALTER TABLE employee
ADD skills varchar(20);
UPDATE employee   
SET skills = 'html/css'  
WHERE employee_id = 103;  
UPDATE employee   
SET skills = 'javascript'  
WHERE employee_id = 104;
UPDATE employee   
SET skills = 'javascript'  
WHERE employee_id = 105; 
UPDATE employee   
SET skills = "database"  
WHERE employee_id = 102; 

select *from employee;
create table employee_2(first_name varchar(20),last_name varchar(20),employee_id int, date_of_joining date,skills varchar(20));
insert into employee_2(first_name,last_name,employee_id,date_of_joining,skills)values("ankush","thakur",106,null,"database"),("karan","garg",102,"2022-10-03","javascript");
insert into employee_2(first_name,last_name,employee_id,date_of_joining,skills)values("shyama","patro",104,"21-09-03","javascript");
select *from employee_2;


with employee_details as 
(select first_name,last_name,employee_id,skills,date_of_joining from employee where skills ="javascript"
UNION
select first_name,last_name,employee_id,skills,date_of_joining from employee_1 where skills ="javascript"),
employee_1 as
(select first_name,last_name,employee_id,skills,date_of_joining from employee  )
select first_name,last_name,employee_id,skills,date_of_joining from employee_1 where date_of_joining Between "2022-07-12" and "2022-10-03";

create table student(id int not null primary key auto_increment, name varchar(25),percentage int not null,dob date,gender varchar(20));
insert into student(name,percentage,dob,gender)
values("ram kumar",80,"2000-05-10","M"),("ramu rajan",88,"1997-07-22","M"),
("gaurav kumar",90,"1997-02-10","M"),("sita ",89,"2000-03-10","F"),("rita kumari",77,"2001-01-11","F");
select *from student where dob >1999-01-10;
create index studentdob on student(dob);
show index from student;
drop index studentdob on student;


