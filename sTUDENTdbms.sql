create table department
   (dept_name varchar(20),
    building varchar(15),
    budget numeric(12,2),
    primary key(dept_name));
create table course
   (course_id varchar(7),
    title varchar(50),
    dept_name varchar(20),
    credits numeric(2,0),
    primary key(course_id),
    foreign key(dept_name)
    references department);
create table instructor
   (ID        varchar(5),
    name      varchar (20)not null,
    dept_name varchar(50),
    salary    numeric(8,2),
    primary key (ID),
    foreign key (dept_name)
    references department);
    alter table instructor rename ID to ins_id
insert into department(dept_name,building,budget) values 
('Comp. Sci','Taylor',100000),
('Biology','Watson',90000),
('Elc. Eng.','Taylor',85000),
('Music','Packard',80000),
('Finance','Painter',120000),
('History','Painter',50000),
('Physics','Watson',70000);
insert into instructor(ID,name,dept_name,salary) values
('2012','Einstein','Physics',95000),
('2324','Jack D','Biology',90000),
('2548','Wu','Finance',90000),
('4556','El Said','History',60000),
('9834','Katz','Elc. Eng.',80000),
('5858','Crick','Music',70000),
('7654','Singh','Comp. Sci',80000);
insert into course(course_id,title,dept_name,credits) values
('BIO-101','Intro to biology','Biology',4),
('BIO-301','GEnetics','Biology',4),
('BIO-309','Computational Biology','Biology',3),
('CS-101','Intro to Computer Sciernce','Comp. Sci',4),
('CS-190','Game Design','Comp. Sci',4),
('CS-315','Robotics','Comp. Sci',3),
('CS-319','Image Processing','Comp. Sci',3),
('CS-347','Database Management system','Comp. Sci',3),
('EE-181','Intro to Digital System','Elc. Eng.',3),
('FIN-201','Investment banking','Finance',3),
('HIS-351','World History','History',3),
('MU-199','Music Video Production','Music',3),
('PHY-101','Physical Principles','Physics',4);
create table student(
  s_id varchar(15),
  s_name varchar,
  state varchar,
  dept_name varchar,
  primary key(s_id),
  foreign key (dept_name) references department); 
 create table pre_req_course(
  course_id varchar(7),
  prereq_courseID varchar,
  foreign key(course_id) references course);
 create table advisor(
 s_id varchar,
 ID varchar,
 foreign key(s_id) references student on delete cascade on update cascade,
 foreign key (ID) references instructor on delete cascade on update cascade);
 create table register(
 s_id varchar,
 course_id varchar,
 garde varchar,
 foreign key(s_id) references student on delete cascade on update cascade,
 foreign key (course_id) references course on delete cascade on update cascade);   
 alter table student add column tution_fee numeric(9,2);
alter table student add column bus_fee numeric(9,2); 
alter table student add constraint fee_check check(tution_fee>0);  
alter table student add column cgpa varchar(5);
alter table register add column reg_date date not null default current_date; 
alter table register add column reg_time time not null; 
insert into student (s_id,s_name,state,dept_name,cgpa) values 
('145','Venkat','kerala','Comp. Sci',1.2),
('247','Prashant','Maharashtra','Finance',8.2),
('152','Nikitha','Gujarat','Physics',6.5),
('142','Darshik','Kerala','Music',7.2);
select * from student

update student set tution_fee=220600 where s_id = '145'
update student set bus_fee=220600 where s_id = '145'

select * from student
update student set tution_fee=5000 where s_id = '145'
update student set tution_fee=220600, bus_fee=1000 where s_id = '247'
select * from student
update student set tution_fee=220600, bus_fee=1000 where s_id = '247'
select * from student
update student set tution_fee=220600, bus_fee=5000 where s_id = '145'
update student set tution_fee=220600, bus_fee=2000 where s_id = '142'
update student set tution_fee=220600, bus_fee=3000 where s_id = '152'
select * from instructor
select * from advisor
create table section(
  course_id varchar(7),
  sec_id varchar(8),
  semester int,
  yearr int,
  building varchar(15),
  foreign key(course_id) references cours  update section set day = 'Monday', start_time = '12:00:00' ,end_time = '01:00:00' where room_no = 'N202'   
  alter table section drop constraint section_course_id_fkey
  alter table section add constraint sec_id foreign key(sec_id,course_id,semester,yearr)
  create table teaches(
    ins_id varchar(5),
    course_id varchar(7),
    sec_id varchar(8),
    semester int,
    yearr int,
    foreign key(ins_id) references instructor,
    foreign key(sec_id,course_id,semester,yearr) references section);
    select * from course
    alter table section add column room_no varchar(5)
    insert into section (course_id,sec_id,semester,yearr,building,room_no) values 
    ('CS-101','A',2,2017,'Taylor','N202'), 
    ('BIO-101','B',1,2017,'Watson','S103'),
    ('PHY-101','C',2,2017,'Watsonm','N105'),
    ('FIN-201','B',4,2017,'Painter','S203'),
    ('HIS-351','A',5,2017,'Painter','N304'),
    ('MU-199','B',1,2017,'Packard','S101') 
    insert into teaches (ins_id,course_id,sec_id,semester,yearr) values 
    ('7654','CS-101','A',2,2017)
    insert into teaches (ins_id,course_id,sec_id,semester,yearr) values 
    ('2324','BIO-101','B',1,2017),
    ('2012','PHY-101','C',2,2017),
    ('2548','FIN-201','B',4,2017),
    ('4556','HIS-351','A',5,2017),
    ('5858','MU-199','B',1,2017)
    select count(course_id) from teaches 
    select distinct ins_id from teaches where semester=5 and yearr=2017
    select distict(ins_id) from instructor,teaches where instructor.ins_id = teaches.ins_id and semester=5 and yearr=2017   
    select avg(budget) from department where building='Painter'
    select room_no from section order by course_id
    select dept_name,max(budget) from department group by  dept_name
    alter table section add column day varchar(20), add column start_time time,add column end_time time
    update section set day = 'Monday', start_time = '12:00:00' ,end_time = '01:00:00' where room_no = 'N202'
    update section set day = 'Tuesday', start_time = '08:30:00' ,end_time = '09:30:00' where room_no = 'S103'
    update section set day = 'Wednesday', start_time = '02:00:00' ,end_time = '03:00:00' where room_no = 'N105'
    update section set day = 'Monday', start_time = '03:00:00' ,end_time = '04:00:00' where room_no = 'S203'
    update section set day = 'Friday', start_time = '04:00:00' ,end_time = '05:00:00' where room_no = 'N384'
    update section set day = 'Monday', start_time = '12:00:00' ,end_time = '01:00:00' where room_no = 'S101'
  elect * from section where start_time='12'and day='tuesday'and sem='5' and year=2017

update instructor set id='i1056' where id='1056'
select avg(credits) from course where dept_name='Comp. Sci' or dept_name='CSA'
select max(salary) as max_salary from instructor1 where dept_name='CS' 
alter table instructor1
add column dateofbirth date

Select *, extract (year from age (current_Date,dateofbirth)) as “age” from instructor1;  

     
