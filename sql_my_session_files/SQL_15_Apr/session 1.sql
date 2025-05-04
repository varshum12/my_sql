-- create database employee1

create database employee1 ;

drop database employee1 ; 

create database if not exists employee1 ;

show databases ; 

-- create table Employee_details
use employee1 ;
CREATE TABLE  if not exists emp_details (
    emp_id VARCHAR(20),
    emp_name VARCHAR(20),
    emp_disgnation VARCHAR(20),
    emp_age INT
);  


-- describe table 
describe  emp_details  ;

-- drop table
drop table emp_details ; 

select * from emp_details ;


-- insert data in table
insert into emp_details 
values('EMP0001' ,'PRADIP', 'H.R' ,36) ;

SELECT * FROM EMP_DETAILS ;

INSERT INTO EMP_DETAILS 
VALUES ('EMP0002' ,'ASHOK' ,'MANAGER' ,28),
('EMP0003' ,'PAWAN KUMAR' ,'ASST. MANAGER' , 28) ,
('EMP0004' ,'SANTOSH' ,'STORE MANAGER' ,25 ),
('EMP0005' ,'THAMAN' ,'GENERAL MANAGER' ,26 ) ;

INSERT INTO EMP_DETAILS(EMP_ID , emp_disgnation)
VALUES ('EMP0006' , 'SUPERVISOR') ;

describe EMP_DETAILS ;


-- CHECK DATA 
SELECT * FROM EMP_DETAILS ; 

