-- create database 
/* select all columns of ends with */

show databases ;
create database employee ;

drop database employee ;

create database if not exists employee  ; 
-- create table emp_details;

use employee ;
CREATE TABLE employee_details (
    emp_id VARCHAR(10),
    emp_name VARCHAR(20),
    emp_designation VARCHAR(20),
    emp_age INT
) ;


-- describe table
describe employee_details ;



insert into employee_details values('E40001' , 'Pradip' ,'HR',36) ;

select * from employee_details;

-- insert observations

insert into employee_details values('E40002' ,'Ashok','Manager' ,28),
				('E40003' ,'pavan Kumar',"Asst.Manager" ,28),
				('E40004' ,'Santosh','Store Manager' ,25),
				('E40005' ,'Thaman','general Manager',25);
  
  
  -- insert emp_id = 'E40006' and name = 'John'
  
  insert into employee_details (emp_id ,emp_name) values('E40006' ,'John') ;
  
  
select * from employee_details ;

drop  table employee_details ;

select emp_name ,emp_age from employee_details ;

select * from employee_details where emp_name = 'Santosh' ;

update employee_details set emp_name = 'Rahul' where emp_name = 'santosh';

SET SQL_SAFE_UPDATES = 0;


select emp_name from employee_details ;

select * from employee_details where emp_age = 28;

select * from employee_details where emp_name = 'pavan kumar' and emp_age = 28;

select * from employee_details ;

update employee_details set emp_designation = 'manager'  ,emp_age = 27 where emp_name = 'john';

select * from employee_details where emp_name = 'john';

alter table employee_details change emp_age age int ;

select * from employee_details ;

alter table employee_details rename emp ;

-- rename column emp_designation to emp_des

alter table emp rename column emp_designation to emp_des ;
describe emp ;

select * from employee_details ;
select  * from emp ;




/* alter -- change --column name , datatype , keys add 
         --  modify --  data type , key add
         -- add column , delete column */
         
         
describe emp ;

alter table emp change emp_name emp_name varchar(30) ;


alter table emp modify emp_name varchar(40) ;

-- add column department 

alter table emp add column department varchar(20) ;
describe emp ;

alter table emp drop column department ;

delete from emp where emp_name  = 'rahul' ;

select * from emp ;


select emp_name ,age from emp ;

--  wildcard --> % and _

select * from emp where emp_name like 'j%';

select * from emp where emp_name like 'p%' ; 

select * from emp where emp_name like 'z%' ;


select * from emp  where emp_name  like '%a%' ;

update emp set emp_name = 'Anuj' where emp_name = 'Ashok';


select * from emp where emp_name like '_a%' ;

select * from emp where emp_name like '__a%' ;