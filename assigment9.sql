create database assigment9;
use assigment9;
create table Employees(EMPLOYEE_ID int not null primary key auto_increment, 
FIRST_NAME varchar(20),
 LAST_NAME varchar(20),
 EMAIL varchar(20), 
 PHONE_NUMBER int,
 HIRE_DATE date,
 JOB_ID int ,
 SALARY int ,
 MANAGER_ID int ,
 DEPARTMENT_ID int,
foreign key(JOB_ID) references job_details(JOB_ID),
foreign key(MANAGER_ID) references MANAGER_Details(MANAGER_ID),
foreign key(DEPARTMENT_ID) references department_details(JOB_ID));

insert into employees(FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID)values
("akshay","attri","ak@gmail.com","987933497","2022-04-21",101,42000,201,301),
("harish","goel","harish@gmail.com","999933497","2022-02-21",102,43000,202,302),
("kumar","DK","dk@gmail.com","985933497","2022-04-11",103,45000,203,303),
("samir","kusmar","samir@gmail.com","987223497","2022-02-11",104,40000,204,304);

create table job_details(JOB_ID int not null primary key,job_title varchar(20));
insert into job_details(job_id,job_title)values(101,"Angular Developer"),(102,"Angular Developer"),(103,"Nodejs Developer"),(104,"Mobile Developer");

create table MANAGER_Details(MANAGER_ID int not null primary key,job_title varchar(20));


create table department_details(DEPARTMENT_ID int not null primary key,department  varchar(20));
insert into department_details(department_id,department)values("IT"),("Development"),("Design"),("IT");

select Employees.EMPLOYEE_ID,Employees.FIRST_NAME,

Employees.JOB_ID,
Employees.MANAGER_ID,Employees.DEPARTMENT_ID,
department_details.department,
job_details.job_title
from Employees
inner join job_details on Employees.JOB_ID=job_details.JOB_ID
inner join MANAGER_Details on Employees.MANAGER_ID=MANAGER_Details.MANAGER_ID
inner join department_details on Employees.DEPARTMENT_ID=department_details.DEPARTMENT_ID;
 
select Employees.EMPLOYEE_ID,Employees.FIRST_NAME,
Employees.EMAIL, Employees.PHONE_NUMBER, 
Employees.HIRE_DATE,Employees.JOB_ID,
Employees.MANAGER_ID,Employees.DEPARTMENT_ID,
department_details.department,
job_details.job_title
from Employees
inner join job_details on Employees.JOB_ID=job_details.JOB_ID
inner join MANAGER_Details on Employees.MANAGER_ID=MANAGER_Details.MANAGER_ID
inner join department_details on Employees.DEPARTMENT_ID=department_details.DEPARTMENT_ID;
 
 
 
drop table employees1;
 
 create table employees1(
    employee_id int not null primary key auto_increment ,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(255),
    phone_number bigint,
    hire_date date,
    job_id int not null,
    salary int,
    manager_id int
  
  );

insert into employees1(first_name, last_name, email, 
phone_number, hire_date, job_id, salary, manager_id)
values("phalesh","kumar","phalesh@gmail.com",908499499,"2022-03-01",01,15500,12),
("akshay","attri","akshay@gmail.com",7009877206,"2022-05-05",02,15600,13),
("ankush","singh","ankush@gmail.com",83605344147,"2022-06-06",03,17400,14),
("sushil","saini","sushil@gmail.com",7004976462,"2022-05-08",04,18500,15),
("himanshu","narwal","himanshu@gmail.com",9123456789,"2022-01-01",05,21000,16),	
("samir","patra","samir@gmail.com",9342789118,"2022-10-10",08,25500,17),
("monjot","singh","monjot@gmail.com",9914461772,"2022-04-01",07,15600,18);
drop table job_details;
create table job_details(ID int not null ,job_title varchar(20));
insert into job_details(id,job_title)values(01,"Angular Developer"),(02,"Angular Developer"),(03,"Nodejs Developer"),(04,"Android Developer"),(05,"Flutter Developer"),(08,"Mobile Developer"),(07,"FullStack Developer");
select *from job_details;

select *from employees1;


ALTER TABLE employees1
ADD FOREIGN KEY (job_id) REFERENCES job_details(ID);



select max(salary) as Maximum_salary, min(salary) as Minimum_salary,avg(salary) as Avarage_salary, sum(salary) as Total_salary from employees1;

select (max(salary)-min(salary)) as Diffeernce_salary from employees1;
select first_name,last_name,salary from employees1 where salary=(select min(salary) from employees1);

select manager_id from employees1 where salary=(select min(salary) from employees1);

select sum(salary) as Total_salary from employees1;

 