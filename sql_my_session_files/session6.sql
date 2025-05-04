use employee ;
show tables ;
select * from employeedata ;
-- select second maximum salary
describe employeedata; 
select max(sal) from employeedata ;

SELECT 
    sal
FROM
    employeedata
WHERE
    sal < (SELECT 
            MAX(sal)
        FROM
            employeedata);
            
 select max(sal) from employeedata where   
 sal < (SELECT 
            MAX(sal)
        FROM
            employeedata);
            
SELECT 
    sal
FROM
    employeedata
ORDER BY sal DESC
LIMIT 1 OFFSET 1;


select distinct(sal) from employeedata ;

SELECT DISTINCT
    (sal)
FROM
    employeedata
ORDER BY sal desc limit 1 offset 1 ;



select * from employeedata where sal = (SELECT DISTINCT
    (sal)
FROM
    employeedata
ORDER BY sal desc limit 1 offset 1);

            
select * from department ;


select * from employeedata ;

-- select third maximum salary 

select * from employeedata ;

-- select department where employee count >3


create table dept (did int not null , dept_name varchar(20));
insert into dept values (10 ,'HR') , (40 ,'IT') ,(50 , 'Account');

 select * from dept  ;
 
 -- select data for employee from HR department

select did from dept where dept_name = 'HR' ;


SELECT 
    *
FROM
    employeedata
WHERE
    did = (SELECT 
            did
        FROM
            dept
        WHERE
            dept_name = 'HR');


-- select count of departmentid > 3
select count(*) from employeedata ;


(select did ,count(did) from employeedata group by did);

select * from employeedata ;
select  count(did) > 3 from employeedata ;


select did ,count(did) from employeedata group by did;

 
-- select those employee which are not belongs to HR Department

SELECT 
    *
FROM
    employeedata
WHERE
    did  not in  (SELECT 
            did
        FROM
            dept
        WHERE
            dept_name = 'HR');


SELECT did
        FROM
            dept
        WHERE
            dept_name <> 'HR' ;


select * from employeedata ;


-- select avearge salary per department considering only employees earning above >2000


-- select department having count of department > 3

SELECT 
    did, COUNT(did)
FROM
    employeedata
GROUP BY did
HAVING COUNT(did) > 3;


SELECT 
    AVG(sal)
FROM
    employeedata;



SELECT 
    did, AVG(sal)
FROM
    employeedata
GROUP BY did;





-- having avg(sal) >30000 


SELECT 
    did, AVG(sal)
FROM
    employeedata
GROUP BY did
HAVING AVG(sal) > 30000;


/* select avearge salary per 
department considering only employees earning above >25000 */


select sal from employeedata ;


select did , avg(sal) from employeedata group by did ;

SELECT 
    AVG(sal), did
FROM
    employeedata
WHERE
    sal > 25000
GROUP BY did;


/* select average salary per 
department considering 
only employees earning above >25000 having avg(sal)<35000*/



SELECT 
    AVG(sal), did
FROM
    employeedata
WHERE
    sal > 25000
GROUP BY did  having avg(sal) < 35000;



-- fetch those department having maximum salary >40000

SELECT 
    MAX(sal) as highest_sal, did as department_with_maximum_Sal
FROM
    employeedata
GROUP BY did
HAVING MAX(sal) > 40000;


-- select average salary for department id  = 20

SELECT 
    did, AVG(sal)
FROM
    employeedata
WHERE
    did = 20
GROUP BY did;
