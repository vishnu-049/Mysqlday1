create database joinsdb;
use joinsdb;
create table customers(
customer_id int primary key,
customer_name varchar(255),
city varchar(255));

insert into customers(customer_id,customer_name,city)
values (1,"ram","kolkata"),
(2,"sham","delhi"),
(3,"roy","banglore"),
(4,"killian","chennai"),
(5,"murphy","hyderabad")
;
select * from customers;

create table orders(
order_id int ,
customer_id int,
order_amount int,
foreign key(customer_id) references customers(customer_id));

insert into orders(order_id,customer_id,order_amount)
values(101,1,4000),
(102,2,3000),
(103,3,5500);

select * from orders;

select c.customer_name,o.order_amount
from customers c
inner join orders o
on c.customer_id = o.customer_id;

select c.customer_name,o.order_amount
from customers c
left join orders o
on c.customer_id = o.customer_id;

select c.customer_name,o.order_amount
from customers c
right join orders o
on c.customer_id = o.customer_id;

select c.customer_name,o.order_amount
from customers c
left join orders o
on c.customer_id = o.customer_id

union
select c.customer_name,o.order_amount
from customers c
right join orders o
on c.customer_id = o.customer_id;

select c.customer_name,o.order_id
from customers c
cross join orders o;
