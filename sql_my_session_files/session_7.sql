use employee ;
show tables ;

select * from employee ;
SELECT 
email,
    (SELECT 
            MAX(salary)
        FROM
            employee) AS highest_salary
FROM
    employee;


select * from employee ;

SELECT email, salary 
FROM employee e1
WHERE salary > (SELECT AVG(salary) 
                FROM employee e2 
                WHERE e1.departmentid = e2.departmentid);
                
                
                
SELECT email, salary 
FROM employee e1
WHERE salary > (SELECT AVG(salary) 
                FROM employee e2 
              group by departmentid);
              
              
              
select * from employee  ;

SELECT 
    AVG(salary), departmentid
FROM
    employee
WHERE
    departmentid = 1;


SELECT 
    AVG(salary) ,departmentid
FROM
    employee 
WHERE
    departmentid = 1 group by departmentid;




/* find those employee whose salary > departments average salary*/
use employee ; 
select * from employeedata ;


SELECT 
    sal, fname , lname ,did
FROM
    employeedata AS e1
WHERE
    sal > (SELECT 
            AVG(sal)
        FROM
            employeedata AS e2
        WHERE
            e1.did = e2.did);


select  did, avg(sal) from employeedata group by did ;








/*Finds the number of 
employees in each department who earn more than 30,000,
 ordered by department size (descending).*/
 
 SELECT 
    COUNT(did) total_emp, did
FROM
    employeedata
WHERE
    sal > 30000
GROUP BY did
ORDER BY total_emp desc;
 
 
 
 select * from employeedata ;
 
 
 
 /*Finds the average salary
 per department for employees 
 hired after 2015, and filters departments 
 where the average salary is greater than 60,000.*/


select * from employee ;


/*Counts orders per year 
from 2020 onward, sorted by year.*/

SELECT 
    COUNT(order_date), YEAR(order_date)
FROM
    orders
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);



use orders ;
describe orders ;

drop table orders ; 

 -- distict year in data
 use orders ;
 
 alter table orders modify order_date date ;
  alter table orders modify ship_date date ;
 
 select distinct year(order_date) from orders ;

 select count(distinct year(order_date)) from orders ;
 
 
 select * from orders limit 5 ;
 select order_date from orders limit 5 ;
 
 select date_format(order_date ,'YYYY-MM-DD') as orders_date from orders ;
 
 
select date_format(current_date() as "YYYY-MM-DD") as orders_date  ;

select current_date();


/*Finds total sales for specific categories, 
ordered by highest sales.*/



/*Finds customers with the
 highest spending, breaking ties
 by number of orders.*/

Finds total orders per month in 2023, 
sorted chronologically.




Finds the number of unique products in each
 category where price > 100.
 
 
 
 Counts customers from countries starting with "U", 
 ordered by the highest count.
 
 
 
 Finds the number of unique products in 
 each category where price > 100.
 
 
 Finds the number of logins per user in 2023, 
 sorted by most logins.
 
 
 Finds total revenue per region
 where sales were above 5000.