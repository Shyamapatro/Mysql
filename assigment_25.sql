drop database assigment_25;
create database assigment_25;
use assigment_25;
create table salespersons(id int not null primary key auto_increment, 
name varchar(20), city varchar(40), commission DECIMAL(5,2));

insert into salespersons(name,city,commission)values("vikas","Kolkata","0.15"),
("Raj","simla","0.20"),("Jay","Jamshedpur","0.10"),("Bhusan","devghar","0.04"),("Amit","devghar","0.13"),("ram","simla","0.14");

select *from salespersons;

create table customer(id int not null primary key auto_increment,
 cus_name varchar(20), city varchar(40), grade int,salesman_id int,
 FOREIGN KEY (salesman_id) REFERENCES salespersons(id));
 
insert into customer(cus_name,city,grade,salesman_id)values("rajesh","patna",100,1),
("ganesh","simla",100,2),("tarun","Jamshedpur",200,3),("Arun","Jaipur",300,4),("Aruni","patna",200,5),("Ajay","simla",200,6);
 
select *from customer;
 
 create table orders (order_id int not null primary key ,
 purch_amt int, ord_date date, customer_id int,
 salesman_id int, 
 FOREIGN KEY (salesman_id) REFERENCES salespersons(id),
 FOREIGN KEY (customer_id) REFERENCES customer(id));
  
  select *from orders;
  
insert into orders(order_id,purch_amt,ord_date,customer_id,salesman_id)values(004,40000,"2022-11-21",1,1),
(044,1500,"2022-1-2",2,2),(034,1700,"2022-1-2",3,3),(014,2000,"2022-10-1",4,4),(015,200,"2021-10-1",5,5),(024,2500,"2022-7-1",6,6);
 
 

 
SELECT customer.cus_name,
salespersons.name, salespersons.city
FROM salespersons, customer
WHERE salespersons.city = customer.city;

SELECT  * 
FROM orders 
WHERE  purch_amt BETWEEN 1100 AND 1800;

SELECT customer.cus_name AS "Customer Name", 
customer.city, salespersons.name AS "Salespersons"
FROM customer  
INNER JOIN salespersons  
ON customer.salesman_id=salespersons.id;

SELECT  * FROM salespersons 
WHERE commission>.10;


SELECT customer.cus_name AS "Customer Name", 
customer.city, salespersons.name AS "Salesman", salespersons.commission 
FROM customer
INNER JOIN salespersons 
ON customer.salesman_id=salespersons.id 
WHERE salespersons.commission>.12;

