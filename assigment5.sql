create database assigment5;
use assigment5;

-- drop table table_1;
create table table_1(
name varchar(15),
location varchar(20));
insert into table_1(name,location)
values("AK","kochi"),
("hari","Jharkhand"),
("Rohan","Pune"),
("Sri","west Bangal");

create table table_2(
name varchar(15),
location varchar(20));
insert into table_2(name,location)
values("AK","kochi"),
("hari","Jharkhand"),
("Raj","Pune"),
("shyama","jamshedpur");
select name,location from table_1
union
select name,location from table_2;



-- Question 2

Create table locations(
location_id int,
location_name varchar(20),
isDeleted int,
Primary key (location_id));
Insert into locations(location_id,location_name,isDeleted)
values(1,"london",0),(2,"India",0),(3,"UAE",0),(4,"Chaina",0),(5,"USA",0),(6,"Japan",0);

create table users(
userid int auto_increment ,
User_name varchar(50),
Current_location int,
Primary key (userid),
Foreign key (current_location) references
locations(location_id));
insert into users(user_name,current_location)
values("Raj",3),("mohan",4),("Rocky",5),("mukesh",6),("jitesh",2),("hari",1);


select users.user_name,locations.location_name as current_location from users inner join locations
on users.current_location=locations.location_id;


-- 

create table wants_to_visit_location(

userid int, 
wants_to_visit int, 
IsVisited int, 
foreign key(userid) references users(userid),
foreign key (wants_to_visit) references locations(location_id));

insert Into wants_to_visit_location(userid,wants_to_visit,IsVisited) values(1,1,0),(2,2,0),(3,3,1),(4,4,0),(5,5,1),(6,6,0);

select *from wants_to_visit_location;

select users.userid, user_name, locations.location_name as wants_to_visit from wants_to_visit_location 
Inner join users on wants_to_visit_location.userid=users.userid
Inner join locations on wants_to_visit_location.wants_to_visit=locations.location_id
where wants_to_visit_location.IsVisited=1;




create table fav_location(userid int,
fav_loc int, 
isMarkedAsfavorite int,
foreign key(userid) references users(userid),
foreign key(fav_loc) references locations(location_id));

insert into fav_location(userid,fav_loc,isMarkedAsfavorite) values(1,5,1),(2,4,0),(3,3,1),(4,2,0),(5,1,0);

select users.userid,users.user_name,locations.location_name as favorite_location
from fav_location
inner join users on fav_location.userid=users.userid
inner join locations on fav_location.fav_loc=locations.location_id;