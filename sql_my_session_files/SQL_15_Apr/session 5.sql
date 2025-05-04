use files  ;

show tables ;

/*alter table 50_startups  rename to startup;*/

rename table 50_startups to startup ;

-- select Entire data from startup 
select * from startup ;

-- select data for california state only

select * from startup where state = 'California' ;

-- select data for new york where profit > 50000

select * from startup where state  = 
'New York'  and  Profit > 50000 ;


/*select state , profit
for new york where profit > 50000*/

select State , Profit from startup where
state ='New York' and profit > 50000 ;


/*for florida state display records having 
profit between 50000 to 100000 */

select state , profit 
from startup 
where state  = 'Florida'  and 
profit >= 50000 and profit<=100000 ;


select state , profit 
from startup 
where state  = 'Florida' 
and 
profit between  50000 and 100000 ;


-- select data for profit 50000 , 100000

select * from startup 
where profit = 50000  or
profit =  100000  ;


select * from startup 
where profit in ( 50000 , 100000 , 90708.19 ) ;


/* aggregate function 
-- count , sum 
-- max
- min
- avg
- var
std */

-- count of data 
select count(*) from startup ;
 select count(1) from startup ;
 
 -- count  for state california
 
 select count(state) from startup 
 where state  =  'California' ;
 
 
 /* count data for state 
 = california and profit <=100000 */
 
 select count(*) from startup 
 where state = 'california' 
 and profit  <= 100000 ;
 
 
 -- total profit 
 select sum(profit) from startup ;


select round(sum(profit) , 3)  from startup ;

-- count of negative profit

select count(profit) from startup 
where profit < 0 ;

-- diplay max , min , total , count of profit 

select max(profit) as highest_profit ,
min(profit) as lowest_profit ,
sum(profit) as total_profit,
count(profit) as count  from startup ;

-- total profit for california state

select sum(profit) from startup 
where state  ='california' ;

-- average profit 
select avg(profit) from startup  ;

/*average profit for 
new york and round to 3 digits */
select round(avg(profit)) avg_profit  from startup 
where state  = 'new york'  ;
 
 
 -- display top 5  highest profit
 
 -- order by
 select profit from  startup  order by profit asc ;
 
 select profit from  startup
 order by profit desc  ;
 
 
select profit from  startup
order by profit desc limit 5 ;

-- variation / variance in profit

select var_pop(profit) 
from startup ;



-- arrange data in ascending order for state


select state from startup order by  state ;

-- california state and highest profit

select state , profit from 
startup order by  state ;

select state , profit from 
startup order by  state , profit;

 -- display highest profit for state california
select state , profit from 
startup order by  state , profit desc limit 1;

-- second highest profit for california state
select state , profit from 
startup order by  state , profit desc limit 1
offset 1;


-- three highest profit for california state
select state , profit from 
startup order by  state , profit desc limit 1
offset 2;


-- three highest profit for california state
select state , profit from 
startup order by  state , profit desc limit 1,2;

-- distinct states 
select distinct(state) from startup ;

-- count of distinct states
select count(distinct(state)) from startup ;

-- state wise total profit
select state , sum(profit) total_profit
from startup group by state ; 


-- display highest profit with corresponding state
select max(profit) , state from startup  ;

select state , max(profit) from startup 
group by state ;

/*display highest profit 
with corresponding state arrange profit in ascending*/

select state , max(profit) highest_profit from startup 
group by state order by highest_profit ; 


/*select highest 
profit for state florida only */

select state , max(profit) from startup 
where state = 'florida' 
group by state ; 


/* select state wise 
total profit for state not equal to 'florida'*/

select state , sum(profit)
from startup 
where not state =  'florida'
group by state ;

select state , sum(profit)
from startup 
where state <>  'florida'
group by state ;


/* select state wise 
total profit for state 
not equal to 'florida' arrange  profit in desc*/

select state , sum(profit) total_profit
from startup 
where state <>  'florida'
group by state order by total_profit desc ;


