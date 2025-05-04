create database employee ;

use employee;

CREATE TABLE department (
    departmentid INT PRIMARY KEY,
    departmentname VARCHAR(50) NOT NULL
);

drop table department ;

CREATE TABLE employee (
    employeeid INT PRIMARY KEY,
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(20) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10 , 2 ) CHECK (Salary > 0),
    HireDate DATE DEFAULT '2023-01-01',
    FOREIGN KEY (DepartmentID)
        REFERENCES DEPARTMENT (DepartmentID)
);


drop table employee ;

insert into department values(1 , 'sales'),
                             (2,'purchase'),
							 (3,'engineering'),
                             (4,'HR');
                             
                             
insert into  employee (employeeid,firstname,lastname,Email,
DepartmentID,salary) values
( 1,'utkarsh','gaikwad' ,'utkarsh.etlhive@gmail.com',3,25000),
(2,'sarthak','sharma','test@test.com',1,20000),
(3,'sayali','More','sarthak@gmail.com',2,30000),
(4,'raman','verma','raman@gmail.com',1,40000),
(5,'john' ,'doe'  ,'john@gmail.com' ,1 ,   27000)
;                 


update employee set email = 'test@gmail.com' where employeeid= 2;

select * from employee; 

-- alter table for check email "@gmail.com" 

alter table employee change email email varchar(50) 
check(email like '%@gmail.com');

describe employee ;