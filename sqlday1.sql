use StudentRepo;
Create table Students(
Student_id int Primary Key,
S_name varchar(255),
department varchar(255),
age int ,
marks int);

Insert into Students(Student_id, S_name, department, age, marks)
Values(5, "Reigns", "CSE", 23, 90);
Insert into Students(Student_id, S_name, department, age, marks)
Values(3, "Roy", "MECH", 22,Null);
Insert into Students(Student_id, S_name, department, age, marks)
Values(4, "killian", "ECE", 22, 60);

select S_name,department from Students;
select * from students where department = "CSE";
select*from students where marks>70;
select * from students where age Between 21 and 24;
select * from students ORDER By marks DESC;
select count(*) as total_Students from students;
select * from students order by department Desc;
select * from students order by S_name Desc;
select * from students order by s_name, age desc;
select * from students where age=22 order by S_name desc limit 2;

update students
set marks=55
where Student_id=2;

update students
set marks = marks + 5
where marks is NOT NULL;

update students
set department="Robotics"
where Student_id=4;

update students
set marks = 0
where marks is NULL;

update students
set age=20
where department="CSE";

delete from Students
where Student_id = 1;

delete from Students
where marks<40;

delete from students 
where department = "MECH";

Truncate table Students;

select * from Students;
