use  employee ;
show tables ;

describe department ;
select * from department ;



describe employee ;
select * from employee ; 


SELECT 
    *
FROM
    employee
        INNER JOIN
    department ON employee.departmentid = department.departmentid;




select * from emp_dept ;

select * from dept_join ;

describe emp_dept ;


select * from emp_dept inner join dept_join 
on dept_join.dept_id = emp_dept.did ;

describe dept_join ;

/*fn , ln , sal , did from emp_dept 
and dept_name from dept_join */

select e.fn , e.ln ,e.sal , 
e.did , d.dname from emp_dept as e inner join 
dept_join as d on 
e.did = d.dept_id ;


select e.fn , e.ln ,e.sal , 
e.did , d.dname from emp_dept  e inner join 
dept_join  d on 
e.did = d.dept_id ;


select  * from emp_dept  e left  join 
dept_join  d on 
e.did = d.dept_id ;


select e.fn , e.ln ,e.sal , 
e.did , d.dname from emp_dept  e left  join 
dept_join  d on 
e.did = d.dept_id ;



-- right join 

select * from emp_dept right join dept_join 
on emp_dept.did = dept_join.dept_id ;


select did from emp_dept 
union 
select dept_id from dept_join ;

select did from emp_dept  
union all 
select dept_id from dept_join order by did ;

select * from emp_dept left join dept_join 
on dept_join.dept_id   = emp_dept.did 
union
select * from emp_dept right join dept_join 
on dept_join.dept_id   = emp_dept.did ;

select * from emp_dept right join dept_join 
on emp_dept.did = dept_join.dept_id  order by emp_dept.sal;

-- entire data for employee having maximum salary

select * from emp_dept right join dept_join 
on emp_dept.did = dept_join.dept_id  
order by emp_dept.sal desc limit 1;

-- select those department having no employee

describe emp_dept ;

alter table emp_dept rename column ï»¿empid to empid ;

select dept_join.dept_id , dept_join.dname from emp_dept right join dept_join 
on emp_dept.did = dept_join.dept_id 
where emp_dept.empid is null;




/* select count of 
each department and display dept_name also */



select count(d.dept_id) , d.dname , d.dept_id
 from emp_dept left join dept_join as d on
d.dept_id = emp_dept.did group by
 emp_dept.did , d.dname;
 
 
 select avg(sal) from emp_dept group by did ;
 
/* select average salary of 
each department and display dept_name also 
display only those department having avgsal < 7000 */



select avg(emp_dept.sal) 
avg_sal  , d.dname , d.dept_id
 from emp_dept left join dept_join as d on
d.dept_id = emp_dept.did group by
 emp_dept.did , d.dname having avg_sal < 7000;


select avg(emp_dept.sal) 
avg_sal  ,  count(emp_dept.did) ,d.dname , d.dept_id
 from emp_dept left join dept_join as d on
d.dept_id = emp_dept.did group by
 emp_dept.did , d.dname having avg_sal < 7000;
 
 
