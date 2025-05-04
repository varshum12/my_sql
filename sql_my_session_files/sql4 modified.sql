use startup1;
select * from startup;
/* aggregate functions 
count,avg

distinct
*/
-- total profit

select sum(profit) from startup;
select sum(profit) as total_profit from startup;
select max(profit) from startup;
select max(profit) as high_profit from startup;
select min(profit) as min_profit from startup;
select profit from startup where profit<0;

-- average

select avg(profit) as average_profit from startup;

select variance(profit) from startup;
select var_samp(profit) from startup;
select var_pop(profit) from startup;
select count(rnd) from startup;
select count(*) from startup;

select sum(profit) as tot_profit, avg(profit) as mean , min(profit) as low_profit, max(profit) as max_profit from startup;

-- aggregate function on multiple column
select sum(profit) as tot_pro, avg(rnd) as mean_rnd from startup;

-- Retrieve data for top 5

select * from startup order by profit desc;
select * from startup order by profit desc limit 5;

select distinct(state) from startup;
select distinctrow(state) from startup;

-- retrieve profit for each state
select sum(profit) as tot_profit , state from startup group by state;

select max(profit) as max_profit , state from startup group by state;



