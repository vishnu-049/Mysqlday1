create table  p1(
person_id int PRIMARY KEY,
first_name varchar(255),
last_name varchar(255),
city varchar(255),
address varchar(255),
department varchar(255));

insert into p1(person_id, first_name, last_name, city, address, department)
values (2,"pallava","murphy","london","112345 england","CS");
insert into p1(person_id, first_name, last_name, city, address, department)
values (3,"masgerian","carpio","mexico","113565 america","ECE");
insert into p1(person_id, first_name, last_name, city, address, department)
values (4,"kinght ","brad","america","112987 Whasington","EEE");
insert into p1(person_id, first_name, last_name, city, address, department)
values (5,"velvet","rock","newzealnad","11666 OVAL","MECH");

delete from p1
where city="london";

/* when we hit rollback it will take you to the back of the place where you have last done.
and we hit commit it will set table to lock stage where you coudnt do any changes later */

SET SQL_SAFE_UPDATES = 0;
set autocommit =0;

select * from p1;
rollback;