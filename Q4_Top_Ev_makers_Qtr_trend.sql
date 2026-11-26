-- Q4. Quarterly trends for top 5 Ev-makers by sales from 2022-2024
with cte as (
select maker
from sales_by_makers
where vehicle_category = "4-wheelers"
group by maker
order by sum(electric_vehicles_sold) desc
limit 5)
select 
      m.maker,d.fiscal_year,d.quarter, 
      sum(electric_vehicles_sold) as ev_sales
from sales_by_makers m
join dim_date d
using (date)
where vehicle_category = "4-wheelers" and 
maker in (select maker from cte) 
group by m.maker, d.fiscal_year, d.quarter 
order by m.maker, d.fiscal_year, d.quarter 