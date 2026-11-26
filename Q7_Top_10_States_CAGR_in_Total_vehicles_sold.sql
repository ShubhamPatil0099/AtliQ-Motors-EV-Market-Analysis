-- Q7. Top 10 states by CAGR in total vehicles sold, FY2022 to FY2024
with cte1 as (select s.state,
       sum(case when d.fiscal_year=2022 then s.total_vehicles_sold else 0 end) as first_year,
       sum(case when d.fiscal_year=2024 then s.total_vehicles_sold else 0 end) as last_year
from sales_by_state s
join dim_date d
on s.date = d.date
       group by s.state)
select state,
	   round(
       (pow
       (last_year / nullif(first_year,0),
       1.0 /(2024-2022))
       - 1)
       * 100,2) as CAGR
from cte1
order by CAGR desc
limit 10