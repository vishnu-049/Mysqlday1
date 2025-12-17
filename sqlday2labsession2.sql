create table customers(
name varchar(255),
id int ,
email varchar(255),
city varchar(255));
insert into customers(name, id, email, city)
values("danush", 66 ,"danush@gmail.com","kolkota");
insert into customers(name, id, email, city)
values("karthi", 55 ,"karthi@gmail.com","banglore");
insert into customers(name, id, email, city)
values("sukumar", 312 ,"sukumar@gmail.com","chennai");
insert into customers(name, id, email, city)
values("murphy", 444 ,"murphy@gmail.com","chennai");

select * from customers;
select name, email from customers
where city="chennai";