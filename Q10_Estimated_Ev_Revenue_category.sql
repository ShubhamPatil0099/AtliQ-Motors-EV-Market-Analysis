-- Q10. Estimated EV revenue by category (FY22-FY24) and FY24 growth vs FY22 and FY23
with annual_rev as (
select m.vehicle_category,
	   d.fiscal_year,
       sum(electric_vehicles_sold * case
       when vehicle_category = "2-wheelers" then 85000
       when vehicle_category = "4-wheelers" then 1500000
       else 0 end) as total_rev
from sales_by_makers m
join dim_date d 
using(date)
where d.fiscal_year in (2022, 2023, 2024)
group by m.vehicle_category, d.fiscal_year),
rev_by_fy as  (
select vehicle_category,
	   sum(case when fiscal_year = 2022 then total_rev end) as rev_fy22,
	   sum(case when fiscal_year = 2023 then total_rev end) as rev_fy23,
       sum(case when fiscal_year = 2024 then total_rev end) as rev_fy24
from annual_rev
group by vehicle_category)
select vehicle_category,
	   rev_fy22,
       rev_fy23,
       rev_fy24,
       round(
       (rev_fy24 - rev_fy22) / nullif(rev_fy22,0) *100,
       2) as growth_22_vs_24,
        round(
       (rev_fy24 - rev_fy23) / nullif(rev_fy23,0) *100,
       2) as growth_23_vs_24
from rev_by_fy

