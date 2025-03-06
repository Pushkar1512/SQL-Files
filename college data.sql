create database student;
use student;

create table class (
rollno int primary key,
name varchar(100),
marks int not null,
grade varchar(1),
city varchar(50) 
);

insert into class
(rollno, name, marks, grade, city)
values
(44101, "Siddharth Kalburgi", 58, "A", "Karad"),
(44114, "Pushkar Raut", 56, "A", "Karad"),
(44102, "Tanmay More", 40, "B", "Warunji"),
(44121, "Akash Mohite", 45, "B", "Banawadi"),
(44117, "Anil Sinha", 26, "D", "Satara"),
(44118, "Chetan Wagh", 36, "C", "Karad");

use student;
select count(rollno) from class;

alter table class
drop column age;

select * from class;

alter table class
change name full_name varchar(100);

use college;

select * from student;

alter table student
drop column age;
create table course(
id int primary key,
course varchar(50)
);

insert into course(id, course)
values
(2, "Mechanical"),
(4, "Pharmacy"),
(5, "Civil"),
(6, "Electrical");

select *
from student
left join course
on student.id = course.id
union
select *
from student
right join course
on student.id = course.id;

select *
from student
left join course
on student.id = course.id
where course.id is null;

select *
from student
right join course
on student.id = course.id
where student.id is null;