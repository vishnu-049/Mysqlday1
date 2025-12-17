CREATE DATABASE companyDB2;
USE companyDB2;
 
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept VARCHAR(20),
    salary INT
);
 
INSERT INTO employees VALUES
(1, 'Amit', 'HR', 30000),
(2, 'Ravi', 'IT', 50000),
(3, 'Neha', 'IT', 70000),
(4, 'Meena', 'HR', 40000),
(5, 'Arjun', 'Finance', 60000);

select count(*) as total_employees
from employees;
select count(*) as HR_employees
from employees
where dept = "HR";
select sum(salary) as total_salry
from employees;
select dept, sum(salary) as dept_salary
from employees
group by dept;
select avg(salary) as avg_salary
from employees;
select dept, avg(salary) as dept_avg_salary
from employees
group by dept;
select min(salary) as lowest_salary 
from employees;
select max(salary) as heighest_salary
from employees;
select dept, max(salary) as deft_high_salary
from employees
group by dept;