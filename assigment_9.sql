create database assigment_9;
use assigment_9;
create table employees(
    Employee_id int not null auto_increment,
    First_Name varchar(50),
    Last_Name varchar(50),
    Email varchar(255),
    Phone_Number bigint,
    Hired_Date date,
    Job_Id int,
    Salary int,
    Manager_id int,
    Department_id varchar(30),
    primary key (Employee_id)
);

INSERT INTO employees(first_name, last_name, email, 
phone_number, Hired_Date, job_id, salary, manager_id,department_id)
values("RajKUMAR","singh","RajKUMAR@gmail.com",9876804682,"2022-04-01",01,15000,11,'A4'),
("PHALESH","KUMAR","phalesh@gmail.com",9009878967,"2022-05-05",02,16000,12,"A5"),
("siva","gupta","siva@gmail.com",83605344147,"2022-06-01",03,17000,13,"A6"),
("shayma","patro","shayma@gmail.com",7009976462,"2022-07-08",04,18000,14,"B4"),
("arvin","panday","arvin@gmail.com",9123459089,"2022-08-01",05,20000,15,"B4"),	
("jay","raj","jay@gmail.com",9888789118,"2022-10-10",06,25000,16,"B6"),
("surya","kumar","surya@gmail.com",9914721772,"2022-04-01",07,15000,17,"D6");
