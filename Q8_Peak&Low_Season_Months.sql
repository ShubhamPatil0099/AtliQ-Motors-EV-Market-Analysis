-- Q8. peak and low season months for EV sales based on the data from 2022 to 2024
select date_format(d.date, "%M") as month,
       sum(electric_vehicles_sold) as EV_Sales
from dim_date d
join sales_by_state s
using (date)
group by month
order by EV_Sales desc;

-- Q8. My modification 
with monthly_sales as (
select date_format(d.date, "%M") as month,
       sum(electric_vehicles_sold) as EV_Sales
from dim_date d
join sales_by_state s
using (date)
group by month
order by EV_Sales desc),
rank_by_sales as(
select month,
       EV_Sales,
       row_number() over (order by EV_Sales desc) as mon_rnk
from monthly_sales)
Select month,
	   EV_Sales,
       case when mon_rnk <= 4 then "peak" 
            when mon_rnk >= 9 then "low"
       else "moderate"
       end as sales_season
from rank_by_sales
       