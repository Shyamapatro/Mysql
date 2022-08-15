drop database assigment8;
create database assigment8;
use assigment8;
create table user_profile(id int not null auto_increment,first_name varchar(255) not null,
last_name varchar(255) not null,email varchar(200) UNIQUE,PRIMARY KEY (id),
  FOREIGN KEY (id)
      REFERENCES user_details (user_id));
drop table user_profile;

insert into user_profile(first_name,last_name,email) 
values 
("shayma","patro","shyama@gmailcom"),
("karan","garg","karan@gmail.com"),
("harish","goel","harish@gmail.com");
 drop table user_details;
create table user_details(user_id int not null primary key auto_increment,address varchar(30),city varchar(20),Country varchar(20));
insert into user_details(address,city,country)values("H block flat number 323","jamshedpur","india"),("F block flat number 325","ranchi","india"),
("c block flat number 30","patna","india");


SELECT user_profile.id, user_profile.first_name, user_profile.last_name, user_details.city
FROM user_profile
INNER JOIN user_details ON user_details.user_id=user_profile.id;

-- one to many relationship
-- drop table books;
-- drop table reviews;
CREATE TABLE books (
  id int not null,
  title varchar(100) NOT NULL,
  author varchar(100) NOT NULL,
  published_date date NOT NULL,
  isbn char(12),
  PRIMARY KEY (id),
  UNIQUE (isbn)
);


CREATE TABLE reviews (
  id int not null,
  book_id integer NOT NULL,
  reviewer_name varchar(255),
  content varchar(255),
  rating integer,
  published_date date,
  PRIMARY KEY (id),
  FOREIGN KEY (book_id)
      REFERENCES books(id)
  );
  

  INSERT INTO books
  (id, title, author, published_date, isbn)
  VALUES
      (1, 'Head first java', 'Mary Parker',
          '2022-03-16',
          '981483029127'),
      (2, 'My  SQL Exmaple', 'John Mayer',
          '2022-03-15',
          '857300923713'),
      (3, 'The workbook for python', 'Cary Flint',
          '2022-03-13',
          '523120967812');


INSERT INTO reviews
  (id, book_id, reviewer_name, content, rating,
       published_date)
  VALUES
      (1, 1, 'John Smith', 'My first review', 4,
          '2022-03-16'),
      (2, 2, 'John Smith', 'My second review', 5,
          '2022-03-16'),
      (3, 2, 'Alice Walker', 'Another review', 1,
          '2022-03-16');


SELECT  books.title, reviews.reviewer_name, reviews.content,reviews.rating, reviews.book_id
FROM books
INNER JOIN reviews ON books.id=reviews.id;


-- drop table books;


-- many to many relationship using joins
drop table checkouts;
CREATE TABLE checkouts (
  id int ,
  user_id int ,
  book_id int NOT NULL,
  checkout_date date,
  return_date date,
  PRIMARY KEY (id) ,
 FOREIGN KEY (id) REFERENCES user_profile(id)
					,
  FOREIGN KEY (book_id) REFERENCES books(id)
                        
);

INSERT INTO checkouts
  (id, user_id, book_id, checkout_date, return_date)
  VALUES
    (1, 1, 1, '2022-10-15',
             "2022-10-19"),
    (2, 1, 2, '2022-10-05',
              '2022-10-13'),
    (3, 2, 2, '2022-10-15',
              '2022-10-22');          
SELECT  checkouts.checkout_date, checkouts.return_date, reviews.content,reviews.rating, reviews.book_id
FROM checkouts
INNER JOIN reviews ON reviews.book_id=checkouts.book_id;



create table employee(employee_name varchar(255),employee_id int primary key not null);
insert into employee(employee_id, employee_name) value(202,"shyama"),(204,"ak"),(205,"kumar");
create table dupty_shift(day_shift_id int primary key not null,dupty_shift varchar(20));
insert into dupty_shift(day_shift_id, dupty_shift) value(212,"Morning"),(213,"Evening"),(220,"Night");
create table work_in( mode varchar(20),employee_id int, day_shift_id int,FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
  FOREIGN KEY (day_shift_id) REFERENCES dupty_shift(day_shift_id));

insert into work_in(mode) values("automatic"),("manual"),("automatic");
select *from work_in;

SELECT  employee.employee_name, employee.employee_id, dupty_shift.day_shift_id,day_shift.dupty_shift
FROM dupty_shift
INNER JOIN work_in ON dupty_shift.day_shift_id=work_in.day_shift_id;

