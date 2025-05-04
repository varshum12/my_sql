create database Apr_15_weekday ;

use Apr_15_weekday ;

-- create table department

create table department
(dept_id int primary key  ,
dept_name varchar(50) not null ) ;


/*create table containing 
foreign key --employee */

create table if not exists employee 
(emp_id int primary key ,
fname varchar(50) not null ,
lname varchar(50) not null,
email varchar(50) unique ,
deptid int not null ,
salary decimal(16 , 6) check(salary >0),
hire_date date default '2025-04-29' ,
foreign key(deptid)
 references department(dept_id) 
 on delete cascade ) ;
 
 select * from employee ;
 
 -- insert data into both tables
 
 -- insert  into department 
 
 insert into department values 
 (1 , 'sales') ,
 (2,'Purchase') ,
 (3 , 'Engineering'),
 (4 , 'HR') ;
 
 
 insert into employee values
 (1 , 'Utkarsh'  ,'Gaikwad' ,
 'utkarsh.etlhive@gmail.com' ,  3 , 25000 , '2025-04-29' ) ,
 (2 , 'Sarthak' ,'Sharma' ,
 'test@test.com' , 1 , 20000 , '2023-04-29') ,
 (3 , 'sayali' ,'more' , "example@gmail.com"
 ,2, 30000 , '2022-04-1') ,
 (4 ,'Raman' , 'verma' ,
 'raman@gmail.com' , 4 , 40000 ,  '2022-01-2'),
 (5 , 'john' ,'doe' ,'johndoe@test.com' ,  1 , 27000 ,'2025-04-29')  ;
 
 update employee set 
 email = 'test@gmail.com' where email = 'test@test.com';
 
 
 update employee set email = 'johndoe@gmail.com'  where
 email = 'johndoe@test.com' ;
 
 select * from employee ;
 
 
 
 -- add constraint check email ending with @gmail.com'alter
 
 alter table employee change email email
 varchar(50) unique  check (email like '%@gmail.com') ;
 
 
 
 insert into employee
 (emp_id , fname , lname , deptid , email)
 values(6,'Umesh' , 'Mete' ,  1 ,'Umesh@gmail.com') ; 
 
 select * from employee ;
 
 
 
delete from department where dept_id  = 1 ;

select * from employee where deptid =  1;


select * from employee ;











