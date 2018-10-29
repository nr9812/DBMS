select name, building from department,instructor where instructor.dept_name=department.dept_name 
select name, title from instructor,course where instructor.dept_name=course.dept_name 
alter table instructor add column gendre varchar(2)
select * from instructor
alter table instructor rename column gendre to gender
update  instructor set gender = ('M')
select name, title, course_id from instructor,course where instructor.dept_name=course.dept_name and gender='F'
select title,budget from course,department where course.dept_name = department.dept_name
select name from instructor,course where course.dept_name=instructor.dept_name and title ='Operating System' 
select dept_name, count(name) from instructor group by dept_name  having  count(name) >=1 
select * from teaches
select name,title from instructor,teaches,course where  instructor.ins_id = teaches.ins_id and instructor.dept_name=course.dept_name and yearr=2017
select name,title from instructor natural join teaches natural join course where dept_name='Comp. Sci'
select * from student
alter table register rename column garde to grade
insert into register(s_id,course_id,grade,reg_date,reg_time) values 
('247','FIN-201','B','08/01/2017','12:00:00'), 
('145','CS-347','A','05/20/2017','08:30:00'),
('142','MU-199','C','01/10/2017','02:00:00'),
('152','PHY-101','A','06/23/2017','03:00:00')
select s_name from student natural join register natural join course where title='Database Management system' and grade='A'
select s_id from student natural join course natural join section where title='Intro to Computer Sciernce' and yearr=2017
select name, count(title) from instructor natural join course group by name 
select name, count(title) from instructor natural join course natural join teaches where yearr=2017 group by name 
select name from instructor natural join department where building='Taylor'
select name, course_id from instructor natural join teaches
insert into teaches(ins_id,course_id,sec_id,semester,yearr) values ('7654','PHY-101','C',2,2017)
select name,title from instructor natural join course  
Select name, title from (instructor NATURAL JOIN teaches) join course using (course_id);
insert into student(s_id,s_name,state,tution_fee,bus_fee,cgpa) values('100','Arjun','Tamil Nadu',220000,1000,'8.6')
Select name, title from (instructor NATURAL JOIN teaches) join course using (course_id);
Select * from student natural join register;
Select * from student natural left outer join register;
Select * from register natural right outer join student;
select name from instructor natural join course natural join teaches where title='C Programming'and semester=2 and yearr=2017
select count(course_id) from instructor natural join course natural join teaches  group by name