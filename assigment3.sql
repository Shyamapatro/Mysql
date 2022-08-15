use assigment3;
drop table user_info;
create table user_info (id int,name varchar(20) NOT NULL,Remote_location varchar(50) not null,company varchar(30) not null);
insert into user_info(id,name,Remote_location, company) values(1,"sushil",'punjab','applify');
insert into user_info(id,name,Remote_location, company) values(2,"ak",'rajasthan','applify');
insert into user_info(id,name,Remote_location, company) values(3,"harish",'punjab','applify');
insert into user_info(id,name,Remote_location, company) values(4,"himanshu",'haryana','applify');
insert into user_info(id,name,Remote_location, company) values(5,"samir",'hyderabad','applify');
insert into user_info(id,name,Remote_location, company) values(5,"shyama",'Jharkhand','applify');

UPDATE user_info SET id =6 WHERE name ='shyama';
ALTER TABLE user_info DROP COLUMN Remote_location;
ALTER TABLE user_info add primary key(id);

-- select *from user_info;
-- drop table locations;
create table locations(loc_id int,loc_name varchar(50),primary key(loc_id));
insert into locations(loc_id,loc_name) values(11,"punjab"),(12,"haryana"),(13,"hyderabad"),(14,"Jharkhand"),(15,"rajasthan"),(16,"kashmir");


-- create favorite location table 

create table fav_location(id int, loc_id int,fav int,foreign key(id) references user_info(id),foreign key(loc_id) references locations(loc_id));
-- drop table fav_location;
insert into fav_location(id,loc_id,fav) values(1,11,0),(2,12,1),(3,13,0),(4,14,0),(5,15,1),(6,16,0);

select user_info.name, locations.loc_name from fav_location inner join user_info on fav_location.id=user_info.id inner join locations on fav_location.loc_id=locations.loc_id where locations.loc_name="kashmir";
