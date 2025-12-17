CREATE DATABASE funcDB;
USE funcDB;
 
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    join_date DATE,
    dept VARCHAR(20)
);
 
INSERT INTO employees VALUES
(1, 'Amit', 30000, '2021-05-10', 'HR'),
(2, 'Ravi', 50000, '2020-03-15', 'IT'),
(3, 'Neha', 70000, '2019-07-20', 'Finance'),
(4, 'Meena', 60000, '2022-01-12', 'IT');

select upper(emp_name) from employees;
select emp_name, length(emp_name) as length from employees;
select curdate();
select (year(curdate())-year(join_date)) as years_exp from employees;

select count(*) from employees;
select avg(salary) as avg_salary from employees;
select dept,sum(salary) as dept_salary from employees group by dept;
select max(salary) as max_salary_It from employees where dept = "IT";

select emp_name, salary, 
case 
when salary<40000 then "low"
when salary between 40000 and 60000 then "medium"
else "high"
end as salary_level
from employees;
select * from employees;
update employees
set salary=70000
where emp_id =4;
update employees 
set salary=
case 
when salary>=600000 then salary+salary*0.10
else salary+salary*0.05
end;



