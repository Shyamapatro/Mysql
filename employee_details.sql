CREATE TABLE employee_details1 (
  employee_id int NOT NULL,
  employee_name varchar(45),
  gender varchar(10),
  date_of_joining date NOT NULL default '0000-00-00'
  ) ;
INSERT INTO employee_details1 (employee_id,employee_name,gender,date_of_joining) VALUES (1, 'Subham', 'M','2022-02-12');
INSERT INTO employee_details1 (employee_id,employee_name,gender,date_of_joining) VALUES (2, 'sushil','M', '2022-05-15');
INSERT INTO employee_details1 (employee_id,employee_name,gender,date_of_joining) VALUES (3, 'sohan','M', '2022-04-07');
INSERT INTO employee_details1(employee_id,employee_name,gender,date_of_joining) VALUES (4, 'Rohan','M', '2022-04-06');
INSERT INTO employee_details1 (employee_id,employee_name,gender,date_of_joining) VALUES (5, 'raj','M', '2022-03-07');
INSERT INTO employee_details1 (employee_id,employee_name,gender,date_of_joining) VALUES (7, 'rohit', 'M','2022-03-07');
INSERT INTO employee_details1 (employee_id,employee_name,gender,date_of_joining) VALUES (5, 'raj','M', '2022-03-07');
INSERT INTO employee_details1 (employee_id,employee_name,gender,date_of_joining) VALUES (7, 'rohit', 'M','2022-03-07');
INSERT INTO employee_details1 (employee_id,employee_name,gender,date_of_joining) VALUES (5, 'raju','M', '2022-03-07');
INSERT INTO employee_details1 (employee_id,employee_name,gender,date_of_joining) VALUES (1, 'roni', 'M','2022-03-07');

select *from employee_details1;
select *from employee_details1 where employee_id=1 or employee_id=5 or employee_id=7 limit 5;
