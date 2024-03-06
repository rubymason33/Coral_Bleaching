select *
from co2


drop view if exists pre_co2;
create view pre_co2 as
select a as year, b as month, d as monthly_avg
from co2

select * 
from pre_co2



drop view if exists co2_year;
create view co2_year as
select year, sum(monthly_avg) as total_co2
from pre_co2
group by year
order by year asc

select *
from co2_year

