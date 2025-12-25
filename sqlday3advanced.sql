use 1612wiprodb;
 
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept VARCHAR(30),
    salary INT
);
 
INSERT INTO employees VALUES
(1, 'Arun', 'IT', 60000),
(2, 'Bala', 'IT', 55000),
(3, 'Chitra', 'HR', 45000),
(4, 'Divya', 'HR', 48000),
(5, 'Eshan', 'Finance', 70000);
 
select * from employees;
 
-- rank the employees by salary (dept - wise)
-- Rank() and partition
 
select emp_name, dept, salary,
RANK() over (PARTITION by dept order by salary desc ) as dept_rank
from employees;
 
 
 
-- dept wise average salary ()
-- OVer()
 
select emp_name, dept, salary,
avg(salary) OVER (PARTITION by dept) as avg_salary
from employees;
 
-- row number
 
select emp_name, salary,
ROW_NUMBER() over (order by salary desc ) as row_num
from employees;
 
 
-- dense_rank - rank the rows based on the order by, where
 
select emp_name, salary,
DENSE_RANK() over (order by salary desc ) as denserank
from employees;
 
-- Nlite(n) divide into groups
 
select emp_name, salary,
NTILE(4) over (order by salary desc ) as salary_group
from employees;
 
 