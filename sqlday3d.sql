create table customeer (
customer_id int,
cust_name varchar(255),
city varchar(255) ,
grade  int,
salesman_id int 
);

insert into customeer(customer_id,cust_name,city,grade,salesman_id)
values(3002, "nick romando","New York",100,5001),
(3007 ,"Brad Davis" ," New York ", 200 ,5001),
        (3005 ,"Graham Zusi","California",  200,5002),
        (3008 ," Julian Green " ,"London" ,300 ,5002),
        (3004,"fabian johnson","Paris",300,5006),
        (3009,"geoff cameron","Berlin",100,5003),
        (3003,"jozy altidor","Moscow",200,5007),
        (3001,"Brad fuzan","London",null,5005);

       create table salesmann(
       salesman_id int  ,
       name varchar(255),
       city varchar(255) ,
       commission float
       );
       insert into salesmann(salesman_id, name,city,commission)
       values (5001,"james hoog","New York",0.15),
       (5002 ,"NAil kaitne","Paris",0.13),
       (5003,"Pit alex","London",0.1);
       
       select c.cust_name,c.city,s.name,s.commission
       from customeer c
       inner join
       salesmann s on c.salesman_id=s.salesman_id;