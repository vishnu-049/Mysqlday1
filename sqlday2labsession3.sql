create table orders(
name varchar(255),
id int,
order_id int,
balance int);
insert into orders(name,id,order_id,balance)
values("mahes",235,544544,2500);
insert into orders(name,id,order_id,balance)
values("suma",265,599544,2800);
insert into orders(name,id,order_id,balance)
values("rakesh",445,664544,2100);
insert into orders(name,id,order_id,balance)
values("nidhi",238,555884,2700);

select * from orders;

start transaction;
set autocommit =0;
SET SQL_SAFE_UPDATES = 0;

update orders
set balance=balance-200
where id = 225;

savepoint s1;

select * from orders;

update orders
set balance=balance+2000
where id =445 ;

savepoint s2;


update orders
set balance=balance-2000
where id =445 ;

rollback to s2;

commit;
set autocommit = 1;



