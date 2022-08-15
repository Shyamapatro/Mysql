
create database author;
use author;
create table new_author(author_id INT NOT NULL,author_name varchar(25) NOT NULL);
INSERT INTO new_author (author_id, author_name) VALUES (1, "raj");
INSERT INTO new_author (author_id, author_name) VALUES (2, "jay");
UPDATE new_author SET author_id=null;
UPDATE new_author SET author_id=1;
ALTER TABLE new_author ADD email varchar(255) not null;
INSERT INTO new_author (author_id, author_name,email) VALUES (3, "sanjoy","sanjoy@gmail.com");
select *from new_author;

#Drop table new_author;
