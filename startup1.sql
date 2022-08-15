use startup;
create table user_info(name varchar(30),gender varchar(20),email varchar(40),profile_pic longblob,age int);

insert into user_info(name,gender,email,profile_pic,age)value("Tariq",'M','Tariq@gmail.com','some magic here',23);
insert into user_info(name,gender,email,profile_pic,age)value("jeet",'M','jeet@gmail.com','some magic here',45);
insert into user_info(name,gender,email,profile_pic,age)value("rahul",'M','rahul@gmail.com','some magic here',43);
insert into user_info(name,gender,email,profile_pic,age)value("raj",'M','raj@gmail.com','some magic here',22);

select *from user_info;
#drop table user_info;
#drop table hobbies;
create table hobbies(id Int not null,name varchar(30),hobby_name varchar(50));
insert into hobbies (id,name,hobby_name)values(1,"Tariq","football");
insert into hobbies (id,name,hobby_name)values(2,"jeet","chess");
insert into hobbies (id,name,hobby_name)values(3,"rahul","running");
insert into hobbies (id,name,hobby_name)values(4,"raj","cricket");
Select *from hobbies;


#alter table hobbies add primary key(name);
#SHOW FULL COLUMNS FROM hobbies;
alter table user_info add foreign key(name) REFERENCES hobbies(name);


select *from user_info inner join hobbies on user_info.name=hobbies.name;