create database companydb;
use companydb;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);
 
INSERT INTO employees VALUES
(1, 'Rhodes', 50000),
(2, 'Roman', 45000),
(3, 'Neena', 60000);

-- creating user with password as (identified by) 

CREATE USER 'testuser'@'localhost' IDENTIFIED BY 'test123';
select user, host from mysql.user;

-- giving select permission on the employees table in the companydb for the selcted user 
GRANT SELECT
ON companydb.employees
TO 'testuser'@'localhost';

-- giving insert and update permission on the employees table of the companydb for the sected user
GRANT INSERT, UPDATE
ON companydb.employees
TO 'testuser'@'localhost';

-- giving all permissions on all database of companydb to the user 
GRANT ALL PRIVILEGES
ON companydb.*
TO 'testuser'@'localhost';

-- reload all permsions tables now
FLUSH PRIVILEGES;
-- show all the users
SHOW GRANTS FOR 'testuser'@'localhost';
