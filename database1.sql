use DB1;
go
create table employee(
id int, 
name varchar(50) unique,
salary decimal(10,2),
primary key(id)
);
alter table employee
add department varchar(50);
alter table employee
drop salary ;
execute sp_rename 'department','deptname','column'
create table projects(
projectId int,
projectName varchar,
employee_id int references employee(id) 
);
alter table projects
drop constraint fk_projects_employee
create table customers(
customerId int primary key,
fristName varchar unique,
lastName varchar unique,
email varchar,
status varchar default 'active'
);
create table orders(
orderId int,
orderDate datetime,
totalAmount decimal,check(totalamount>0),
customerId int references customers(customerId)
);
go
create schema [sales]
go
alter schema sales
transfer dbo.orders
execute sp_rename'sales.orders','salesorders','object';