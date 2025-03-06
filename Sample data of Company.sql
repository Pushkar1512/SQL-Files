
create database Amazon;
use Amazon;

create table Employee (id int primary key,
name varchar(50),
salary int unsigned);

insert into Employee values (1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

select * from Employee;

use Amazon;
create table employ ( 
id int,
salary int default 30000);

insert into employ (id) values (101);
select * from employ;
use amazon;
create table payment ( 
customerid int primary key,
customer varchar(100),
mode varchar(50),
city varchar(50) );
select * from payment;

insert into payment (customerid, customer, mode, city)
values
(101, "Pushkar Raut", "Netbanking", "Karad"),
(102, "Ethan Hunt", "Credit Card", "Miami"),
(103, "Siddharth Kalburgi", "Netbanking", "Karad"),
(104, "James bond", "Credit Card", "Denver"),
(105, "Tanmay More", "Debit Card", "Boston"),
(106, "Ava Patel", "Credit Card", "Phoenix"),
(107, "Samarth Bansode", "Netbanking", "Pune"),
(108, "Jason Bourne", "Credit Card", "Portland"),
(109, "Chris Evan", "Credit Card", "Miami"),
(110, "Adivi Sesh", "Debit Card", "New Orleans");
select mode, count(customer) from payment
group by mode;

select * from student;