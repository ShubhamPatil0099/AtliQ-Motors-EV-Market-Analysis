-- Q6. CAGR in 4-wheeler units for the top 5 makers from 2022 to 2024.
with cte1 as (select m.maker,
       sum(case when fiscal_year=2022 then electric_vehicles_sold else 0 end) as first_year,
       sum(case when fiscal_year=2024 then electric_vehicles_sold else 0 end) as last_year
from sales_by_makers m
join dim_date d
on m.date = d.date
       where m.vehicle_category = "4-wheelers"
       group by m.maker),
cte2 as (
select maker 
from sales_by_makers 
where vehicle_category = "4-wheelers"
group by maker
order by sum(electric_vehicles_sold) desc
limit 5) 
select maker,
	   round(
       (pow
       (last_year / nullif(first_year,0),
       1.0 /(2024-2022))
       - 1)
       * 100,2) as CAGR
from cte1
where maker in (select maker from cte2)
order by CAGR desc