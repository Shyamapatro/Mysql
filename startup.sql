Create database Startup;
use startup;
CREATE TABLE Employee ( Emp_ID VARCHAR(20) NOT NULL ,Name VARCHAR(50) NOT NULL ,Age INT NOT NULL ,
Phone VARCHAR(10) NOT NULL ,Address VARCHAR(100) NOT NULL ,PRIMARY KEY (Emp_ID));
INSERT INTO Employee (Emp_ID, name,age,phone,address) VALUES (1, "raj",28,9878657800, 'bihar');
INSERT INTO Employee (Emp_ID, name,age,phone,address) VALUES (2, "jack",26,9087678823,'punjab');
UPDATE Employee SET Emp_ID=null;

ALTER TABLE Employee ADD email varchar(255) not null;
INSERT INTO Employee (Emp_ID, name,age,phone,address,email) VALUES (3, "sanjoy",27,9088887335,'jharkhand',"sanjoy@gmail.com");
select *from Employee;
#drop table employee;
