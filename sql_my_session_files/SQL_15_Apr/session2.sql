use employee1 ;
show tables ; 

-- select entire data from table 
select * from emp_details ;

-- drop database
-- create database
-- use database
-- create table
-- insert data
-- select

describe emp_details ;
 
 
 -- retrive data for designation and name 
 SELECT 
    emp_name, emp_disgnation
FROM
    emp_details;  

-- rename column
alter table emp_details 
rename column
emp_disgnation to emp_disignation ;

-- retrive  data for santosh

SELECT 
    *
FROM
    emp_details
WHERE
    emp_name = 'Santosh';
    
    
/* Retrive data 
for age 28*/

select * from emp_details  where emp_age = 28 ;


-- retrive data for manager ashok

SELECT 
    *
FROM
    emp_details
WHERE
    emp_name = 'Ashok'
        AND emp_disignation = 'manager' and emp_age = 28;
        
        
select * from emp_details ;


-- retrive records containing null

SELECT 
    *
FROM
    emp_details
WHERE
    emp_name IS NULL;
    
    
select * from emp_details ; 

-- select data from table where age = 28 or age = 25

select * from emp_details where emp_age = 28 or emp_age = 25 ;

/* Add record 
 id  = 0007 , Om , 'Professor' , 29 */
 
 insert into emp_details values('0007' , 'Om'
 , 'Professor' , '28' ) ;

select * from emp_details ;

describe emp_details ;

-- update record where name is om and age is 29
UPDATE emp_details 
SET 
    emp_age = 30
WHERE
    emp_name = 'om' AND emp_age = 29;
    

SET SQL_SAFE_UPDATES = 0; 

select *  from emp_details where emp_name  ='om' ;


insert into emp_details (emp_id , emp_name ) 
values('Emp0008', 'sandhya'),
('0008' ,'Sunita' ),
('0009' ,' Sushmita') ,
('010','Anita'),
('011' , 'Geeta') ;

select * from emp_details ;

-- select data starting name from a
-- wild card -- >  % , _

SELECT 
    *
FROM
    emp_details
WHERE
    emp_name LIKE 'a%';
    

-- retrive data containing name ending with 'a'

SELECT 
    *
FROM
    emp_details
WHERE
    emp_name LIKE '%a';

-- retrive names containing 'a'
SELECT 
    *
FROM
    emp_details
WHERE
    emp_name LIKE '%a%'; 

-- retrive names containing a at second position


SELECT 
    emp_name
FROM
    emp_details
WHERE
    emp_name LIKE '_a%';

/* retrive names with
 length 3 and 'a' will be at 2nd  */
 
 SELECT 
    emp_name
FROM
    emp_details
WHERE
    emp_name LIKE '_a_';
    
-- emp_ id starting with 'e'
SELECT 
    emp_id
FROM
    emp_details
WHERE
    emp_id LIKE 'E%';

SELECT 
    emp_id
FROM
    emp_details
WHERE
    emp_id LIKE 'E%';
    
    


select * from emp_details ;

/* 'not starting with 'e' */

SELECT 
    emp_id
FROM
    emp_details
WHERE
    emp_id  not LIKE 'E%';
    
    
  SELECT 
    emp_id
FROM
    emp_details
WHERE
    emp_id  not like 'E%'; 
    
select * from emp_details ;
    
 -- update emp_id emp0007 ,  emp_name = 'Sumitra'  
UPDATE emp_details 
SET 
    emp_id = 'EMP0007',
    EMP_NAME = 'SUMITRA'
WHERE
    EMP_ID = 'EMP0001';
    
    
/* DELETE RECORD WITH NAME 'OM' */

DELETE FROM EMP_DETAILS 
WHERE
    EMP_NAME = 'OM';

SELECT * FROM EMP_DETAILS WHERE EMP_NAME = 'OM';

--  ADD COLUMN SALARY

ALTER TABLE EMP_DETAILS 
ADD COLUMN SALARY decimal(10 , 6)  ; 

-- CHANGE -  NAME , DATA TYPE , CONSTRAINT

-- CHANGE DATA TYPE FOR COLUMN SALARY
ALTER TABLE EMP_DETAILS CHANGE 
SALARY  SALARY dECIMAL(16 , 2 ) ;



describe EMP_DETAILS ;

SELECT * FROM EMP_DETAILS ;

-- CHECK COUNT

SELECT COUNT(*) FROM EMP_DETAILS ; 

UPDATE EMP_DETAILS SET SALARY = 40000.0 WHERE EMP_ID  = 'EMP0007';
UPDATE EMP_DETAILS SET SALARY = 60000.0 WHERE EMP_ID  = 'EMP0002';
UPDATE EMP_DETAILS SET SALARY = 45000.0 WHERE EMP_ID  = 'EMP0003';
UPDATE EMP_DETAILS SET SALARY = 45000.0 WHERE EMP_ID  = 'EMP0004';
UPDATE EMP_DETAILS SET SALARY = 55000.0 WHERE EMP_ID  = 'EMP0005';
UPDATE EMP_DETAILS SET SALARY = 25000.0 WHERE EMP_ID  = 'EMP0006';
UPDATE EMP_DETAILS SET SALARY = 40000.0 WHERE EMP_ID  = 'EMP0008';
UPDATE EMP_DETAILS SET SALARY = 20000.0 WHERE EMP_ID  = '0008' ;
UPDATE EMP_DETAILS SET SALARY = 15000.0 WHERE EMP_ID  = '0009';
UPDATE EMP_DETAILS SET SALARY = 14000.0 WHERE EMP_ID  = '010';
UPDATE EMP_DETAILS SET SALARY = 37000.0 WHERE EMP_ID  = '011';

SELECT * FROM EMP_DETAILS ;

-- SELECT DATA SALARY > 40000

SELECT 
    SALARY, EMP_NAME
FROM
    EMP_DETAILS
WHERE
    SALARY > 40000;
    
-- LESS THAN 15000
SELECT 
    SALARY, EMP_NAME
FROM
    EMP_DETAILS
WHERE
    SALARY < 15000;
    
    
    
-- BETWEEN 15K TO 40K
SELECT 
    SALARY, EMP_NAME
FROM
    EMP_DETAILS
WHERE
    SALARY BETWEEN  15000 AND 40000 ;
  
  
  SELECT 
    SALARY, EMP_NAME
FROM
    EMP_DETAILS
WHERE
    SALARY >=  15000 AND SALARY <= 40000 ;
    
    
    
    
    use employee1 ;

show tables ; 

select * from  emp_details ;

describe emp_details ;

/*change data type 
for emp_name from varchar(20) to varchar(15) */

-- change
alter table emp_details change 
emp_name  emp_name varchar(15) ;

describe emp_details ;
 
-- modify


alter table emp_details 
modify emp_name varchar(12) ;



select * from emp_details ;

insert into 
emp_details(emp_name , salary) 
values('Varsha Mete' , 50000) ;

