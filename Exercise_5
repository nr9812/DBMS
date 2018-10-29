create table Employees(
	emp_id varchar(15),
	emp_name varchar(20),
	dob date,
	salary numeric(9,2));

insert into Employees values ('U4CSE16022','Rahul','1999-06-01',100000);
insert into Employees values ('U4CSE16056','Arshad','1999-12-03',200000);
insert into Employees values ('U4CSE16117','Cookie','1999-10-27',150000);
insert into Employees values ('U4CSE16063','Naveen','1999-11-10',250000);
insert into Employees values ('U4CSE16263','Yenki','1999-05-12',175000);

select * from Employees

select ceil(salary) from Employees
select floor(salary) from Employees
select round(salary,2) from Employees
select power(salary,2) from Employees
select lower(emp_name) from Employees
select emp_name, length(emp_name) from Employees
select lpad(emp_name, length(emp_name), '*') from Employees
select rpad(emp_name, length(emp_name), '*') from Employees
select rtrim(emp_name) from Employees
select ltrim (emp_name) from Employees
select substring(emp_name, 2, 3) from Employees
select to_char(dob,'DD/Month/YYYY') from Employees
select to_date('2018 Aug 01','YYYY Mon DD');
select * from Employees where extract(Month from dob)=01;
