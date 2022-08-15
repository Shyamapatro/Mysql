drop database assigment10;
create database assigment10;
use assigment10;

create table employee (Employee_id int not null primary key auto_increment,
 First_name varchar(20),
 Last_name varchar(30), Salary int ,
 Joiningofdate date, Departement varchar(40),reward_id int,foreign key(reward_id) references rewards(reward_id));
 insert into employee(First_name,Last_name,Salary,Joiningofdate,Departement,reward_id)values
 ("Harish","goel",2000000,"2022-1-2","Backend",1),
 ("ajay","Kumar",5000000,"2021-1-2","Backend",2),
 ("kunal","goel",1000000,"2020-11-12","frontend",3),
 ("Himanshu","singh",410000,"2022-12-2","Database",4),
 ("Sourav","kumar",500000,"2019-12-2","Backend",5),
 ("Oddo","kumar",120000,"2018-12-2","Backend",6),
 ("Punam","kumari",5500000,"2022-3-2","Human resouce",7),
 ("ak","Kumar",8000000,"2021-1-2","Finanace",8);
 
 select *from employee;
 -- drop table rewards;
  create table rewards(reward_id INT primary key not null auto_increment, reward_date date, amount int);
  insert into rewards(reward_date,amount)values
  ("2022-12-2",60000),("2022-12-2",70000),("2022-12-2",80000),("2022-12-2",90000),("2022-12-2",70000),("2022-12-2",90000), ("2022-12-2",Null),("2022-12-2",70000);  ;
  
select*from rewards;

 


SELECT  *, CONCAT(First_name,' ', Last_name) as NAME FROM employee;

select cast(Joiningofdate as date) as Date_of_joining from employee;

SELECT *FROM employee ORDER BY First_name ASC ;
SELECT *FROM employee ORDER BY salary DESC;
SELECT *FROM employee WHERE First_name LIKE 's%';
SELECT *FROM employee WHERE First_name LIKE '%o%';
SELECT *FROM employee WHERE salary BETWEEN 2000000 AND 5000000;
SELECT SUBSTRING(last_name, 1, 3) AS ExtractString
FROM employee;

-- UPDATE  employee SET  First_name= REPLACE(First_name, 'a','#');
select *from employee;


SELECT * FROM employee WHERE NOT first_name='sourav';
SELECT * FROM employee WHERE first_name<>'sourav'AND first_name<>'kunal';

SELECT first_name,LENGTH(first_name) AS LengthOfName
FROM employee;

-- assigment 11
UPDATE employee SET Joiningofdate = '2021-4-2' WHERE Employee_id = 6;
SELECT *FROM employee;    
select *from employee where monthname(Joiningofdate)="April";
SELECT first_name,Employee_id,Joiningofdate FROM employee WHERE Joiningofdate < '2022-04-01';



select *from employee;
DESCRIBE employee;
describe rewards;

SELECT employee.joiningofdate,rewards.reward_date,DATEDIFF(reward_date,joiningofdate ) AS date_difference
FROM employee
INNER JOIN rewards ON  rewards.reward_id=employee.reward_id;

SELECT distinct(Departement),count( employee_id) as total_number_of_employee ,SUM(salary) as Total_salary_on_Each_department
FROM employee 
GROUP BY Departement ORDER BY salary DESC;

SELECT cast(joiningofdate as datetime) as enrollement_date_and_time,employee_id,first_name FROM employee;
select joiningofdate from employee;

select *from rewards;
select *from employee;

 
 select distinct(Departement), sum(salary) from employee;


SELECT distinct(Departement),SUM(salary) as Total_salary_on_Each_department
FROM employee where salary<=500000 
GROUP BY Departement ORDER BY salary DESC ;


select *from rewards;
select *from reward;

SELECT employee.reward_id,rewards.amount, employee.first_name FROM employee  
INNER JOIN rewards ON  rewards.reward_id=employee.reward_id where amount IS NOT Null;

SELECT employee.reward_id,rewards.amount, employee.first_name FROM employee  
INNER JOIN rewards ON  rewards.reward_id=employee.reward_id where amount is  NULL;

select *from employee;

SELECT first_name,salary,
CASE
    WHEN  Employee_id=2 THEN (salary*.08)
    WHEN Employee_id=3  THEN (salary*.05)
    ELSE salary*0.15
END  result
FROM employee;

UPDATE employee SET Departement = replace(Departement, 'Backend', 'BE');
UPDATE employee SET Departement = replace(Departement, 'Finance', 'FNC');
UPDATE employee SET Departement = replace(Departement, 'Human Resources', 'HR');
UPDATE employee SET Departement = replace(Departement, 'Front End', 'FE');

select *from employee;