use employee ;
CREATE TABLE selfjoin (
    empid INT NOT NULL,
    empname VARCHAR(20),
    salary DECIMAL(10 , 5 ) CHECK (salary > 0),
    managerid INT
);

insert into selfjoin values(1,'john smith' ,10000 ,3) ,
						(2, 'jane anderson',12000,3),
                        (3,'tom lanon' ,15000,4),
                        (4,'anne connor',20000,null),
                        (5,'jeremy york',9000,1);
                        
select * from selfjoin ;


describe selfjoin ;

SELECT 
    e.empid, e.empname,e.managerid,
    m.empname AS manager_name
FROM
    selfjoin AS e
		JOIN
    selfjoin AS m ON e.managerid = m.empid;










drop database customers ;
CREATE DATABASE customers ;
DROP TABLE CUSTOMER ;


use customers  ;
CREATE TABLE CUSTOMER (
    CUST_ID INT,
    CUST_NAME VARCHAR(20),
    PRODUCT VARCHAR(20),
    PRICE int,
    COUNTRY VARCHAR(20)
);


INSERT INTO CUSTOMER VALUES (101 , 'THAMAN NAGOR' , 'CHAIR' ,200 ,'INDIA'),
(102 , 'RAMAN SINGH' ,'TABLE' ,1000 , 'RUSSIA') ,
(103 , 'CHAMAN SHANA' ,'WHEEL' , 5000  ,'UNITED STATES')  ,
(104 , 'RAMAN ' ,'DOORS' ,5000 , 'RUSSIA') ,
(105 , 'SUMIT NAGOR' , 'jcb' ,350000 ,'INDIA');

select * from customer ;

-- create stored procedure to select entire data

delimiter $$
create procedure get_data()
begin 
select * from customer ;
end $$
delimiter ;


call get_data();

select * from customer ;

-- fetch data for india 

delimiter &&
create procedure country1(in cntry varchar(20))
begin 
select * from customer where country = cntry ;
end &&
delimiter ;



call country1('india') ;
call country1('russia');

-- update table united_states  to india



delimiter //
create procedure table_update1(in country1 varchar(20) ,in country2 varchar(20))
begin 
update customer set country = country1 where country = country2 ;
end //
delimiter ;

call table_update1('india' ,'united_states') ;



set sql_safe_updates  = 0 ;

select * from customer ;



-- select average price

delimiter $$
create procedure avg_price(out avgprice int) 
begin 
select avg(price) into avgprice from customer ;
end $$
delimiter ;

call avg_price(@avg_prs) ;
select @avg_prs  ;


delimiter &&
create procedure getavg(in avrg varchar(20))

begin

select avg(price) as average_price from customer;

end&&
delimiter ;
select avg(price) from customer;


-- create stored+procedure for avg price when country is india 

delimiter $$
create procedure avg_price_India(in cntry varchar(20),out avprice int)
begin
select avg(price) into avprice from customer where country = cntry;
end $$
delimiter ;

call avg_price_India('India',@avg_prs);
select @avg_prs





delimiter $$
CREATE PROCEDURE AVG_PRICE_IND(IN CNTRY VARCHAR(20) , OUT AVG_PRICE INT) 
BEGIN

SELECT AVG(PRICE)INTO AVG_PRICE FROM CUSTOMER WHERE COUNTRY = CNTRY ;

END $$

DELIMITER ;

CALL AVG_PRICE_IND('INDIA' ,@AVG_PRC);
SELECT @AVG_PRC ;



DELIMITER $$
CREATE PROCEDURE DISTICT_COUNT(OUT COUNT_COUNTRY INT)
BEGIN 
SELECT COUNT(DISTICT(COUNTRY)) INTO COUNT_COUNTRY FROM CUSTOMER ;
END $$
DELIMITER ;

CALL DISTICT_COUNT(@CNT_COUNTRY) ;
SELECT @CNT_COUNTRY ;

SELECT * FROM CUSTOMER ;


-- SEE COUNT FOR COUNTRY RUSSIA
DELIMITER $$
CREATE PROCEDURE RUSSIA_COUNT(OUT COUNT_RUSSIA INT)
BEGIN 
SELECT COUNT(COUNTRY) INTO COUNT_RUSSIA
 FROM CUSTOMER WHERE COUNTRY = 'RUSSIA' ;
END $$
DELIMITER ;

CALL  RUSSIA_COUNT(@CNT_COUNTRY) ;
SELECT @CNT_COUNTRY ;

DELIMITER $$
CREATE PROCEDURE COUNT_CN(OUT COUNT_CNTRY INT , CNTRY VARCHAR(20))
BEGIN 
SELECT COUNT(COUNTRY) INTO COUNT_CNTRY
 FROM CUSTOMER WHERE COUNTRY = CNTRY ;
END $$
DELIMITER ;

CALL  COUNT_CN('INDIA',@CNT_COUNTRY) ;
SELECT @CNT_COUNTRY ;



delimiter $$
create procedure rus_count(out rus_cntry int)
begin
select count(country)
into rus_cntry from customer where country = 'russia' ;
end $$
delimiter ;

call rus_count(@rust);
select @rust;



DROP PROCEDURE NAME_OF_PROCEDURE ;

