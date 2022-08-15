Create database University;
use University;
create table teachers(teacher_id INT,teacher_name varchar(25) NOT NULL,subjects varchar(25) NOT NULL,age INT NOT NULL,UNIQUE (teacher_id));
INSERT INTO teachers (teacher_id, teacher_name,subjects,age) VALUES (1,"Shan","English",30);
INSERT INTO teachers (teacher_id, teacher_name,subjects,age) VALUES (2,"Jhon","Math",34);


ALTER TABLE teachers ADD email varchar(255) not null;
INSERT INTO teachers (teacher_id, teacher_name,subjects,age,email) VALUES (3, "sanjoy","physics",29,"sanjoy@gmail.com");
select *from teachers;
