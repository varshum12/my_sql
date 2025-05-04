show databases ; 

use apr_15_weekday ;
show tables ;

select * from employee ;


insert into department values(1 , 'Sales') ;





insert into employee values(2 , 'Sarthak' ,'Sharma' ,
 'test@gmail.com' , 1 , 20000 , '2023-04-29') ,
 (5 , 'john' ,'doe' ,'johndoe@gmail.com' ,  1 , 27000 ,'2025-04-29');
 
 
 alter table employee drop column deptid ;
 
 describe employee ;
 
 
 -- add default constraint
alter table employee modify  
hire_date date default '2020-2-12' ;
 
alter table employee change  hire_date hire_date 
date default '2021-2-12' ; 
 
 
 -- not able to use default in same way 
 alter table employee add constraint df 
 default hire_date '2020-2-12' ;
 
 -- add 
ALTER TABLE employee 
ALTER hire_date SET DEFAULT '2020-02-12';
 
 describe employee ;
 
 -- added check constraint externally
 alter table employee add constraint ch 
 check (email like '%@gmail.com') ;
 
 
 -- drop ch constraint 
 alter table employee drop constraint ch ;
 
 -- add one obsn
 
insert into employee(fname ,lname , email  , emp_id , deptid )
values('Sarthak' , 'Sharma' ,'test@gmail.com' , 7  , 2) ;
  
  
 
 -- added unique constraint externally
alter table employee add constraint u
unique(email) ;
 
 -- drop unique constraint 
 alter table employee drop constraint u  ;
 
 ALTER TABLE employee DROP INDEX u;

 
 
 alter table employee drop  constraint  u ;
 
 describe employee ; 
 
 
 alter table employee modify email varchar(50) not null ;
 select * from employee ;
 
-- drop primary key 
alter table employee drop primary key ;
 
-- add primary key  with constraint
alter table employee add constraint p primary key(emp_id) ;


-- add primary key without constraint
alter table employee add primary key(emp_id) ;


-- drop foriegn key 
-- will not work
alter table employee drop foreign key deptid  ;


-- at the time of adding column , column in optional
alter table employee add gender varchar(20) not null  ;


-- add not null externally
alter table employee add constraint n alter email 
email not null ; 


-- drop column gender 
alter table employee drop gender ;

-- check 
describe employee ;


-- alter 
-- change -->  name , add constraint , change data type
-- modify -->  add constraint , change data type
-- add primary key 
-- drop primary key
-- add column 
-- drop column
-- add foriegn key 
-- drop foriegn key
-- add constraint 
-- drop constraint

-- delete forign key
-- search for alternate key , super key 



create table student(name varchar(20) , 
student_id  int ,
 course varchar(20) ,
 primary key(student_id ,course )) ;

 