create database demodb;

use demodb;

create table users(id INTEGER primary key auto_increment, name VARCHAR(30));

SELECT * FROM users;

INSERT INTO users(name, city) VALUES ("Kush", "Mohali");

ALTER TABLE users ADD column city varchar(20);

ALTER TABLE users DROP column city;

ALTER TABLE users MODIFY column name varchar(30);

delete from users where id=1;

truncate users;

DROP table users;

DROP database demodb;