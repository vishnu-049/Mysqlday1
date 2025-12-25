CREATE TABLE employeeswipro (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    dept VARCHAR(30)
);
 
INSERT INTO employeeswipro VALUES
(101, 'Arun', 50000, 'HR'),
(102, 'Bala', 60000, 'IT'),
(103, 'Chitra', 55000, 'IT'),
(104, 'Divya', 45000, 'HR'),
(105, 'Eshan', 70000, 'Finance'),
(106, 'Farah', 65000, 'Finance');
 
select * from employeeswipro;
 
 
-- departments with avaerage dsalary > 550000
 
select dept, avg(salary) AS avg_salary
from  employeeswipro
group by dept
having AVG(salary) > 55000;
 
-- depatrtment with more than 1 employee
 
select dept, COUNT(*) as emp_count
from  employeeswipro
group by dept
having count(*) > 1;
 
 
-- using both where and having clause
 
select dept, AVG(salary) as avg_salary
from employeeswipro
where salary > 50000
group by dept
having AVG(salary) > 60000;