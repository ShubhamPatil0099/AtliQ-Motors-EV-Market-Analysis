-- Q3. states with negative penetration (decline) in EV sales from 2022 to 2024
with cte as (
select state,
       sum(electric_vehicles_sold*100)/sum(total_vehicles_sold) as pnt_rate_2022
 from sales_by_state s
 join dim_date d 
 on s.date = d.date
 where fiscal_year = 2022
 group by state
 order by pnt_rate_2022),
 cte1 as 
  (
select state,
       sum(electric_vehicles_sold*100)/sum(total_vehicles_sold) as pnt_rate_2024
 from sales_by_state s
 join dim_date d 
 on s.date = d.date
 where fiscal_year = 2024
 group by state
 order by pnt_rate_2024) 
select state,
       round(pnt_rate_2022,2) as pnt_2022,
       round(pnt_rate_2024,2) as pnt_2024,
       round(pnt_rate_2024 - pnt_rate_2022,2) as declining_pnt_rate
from cte ct
join cte1 ct1
using (state)
where (pnt_rate_2024 - pnt_rate_2022) < 0
order by declining_pnt_rate