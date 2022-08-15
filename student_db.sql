create database school_db;
use school_db;
create table student_info(
student_id int auto_increment primary key,
student_first_name varchar(25) not null,
std_last_name varchar(25) not null,
std_date_of_birth date not null,
std_enrollment_date date
);

create table course(
courseid int auto_increment,
course_title varchar(500) not null,
course_code varchar(10),
number_of_credits varchar(10)
,primary key(courseid)
);
-- drop table student_info;
insert into student_info
(student_first_name,std_last_name,std_date_of_birth,std_enrollment_date) 
values
("shyama","patro","1998-12-11","2020-2-4"),
("Rahul","kumar","1999-12-1","2020-12-3");
insert into course(
course_title,
course_code,
number_of_credits) 
values("JavaScript","CS067",9);

select *from student_info;
select *from course;
select student_first_name, std_last_name,std_date_of_birth from student_info;
select std_last_name as `last name` from student_info;
select *from student_info;

