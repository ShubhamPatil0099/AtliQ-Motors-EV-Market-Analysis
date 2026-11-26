-- projected number of EV salesc til 2030 for the top 10 states based on PY CAGR rate
with top_10 as (
select state,
	   sum(electric_vehicles_sold)*100/sum(total_vehicles_sold) as pnt_rate
from sales_by_state s
join dim_date d
using(date)
where fiscal_year = 2024
group by state
order by pnt_rate desc
limit 10),
cagr_cal as (select s.state,
       sum(case when d.fiscal_year=2022 then s.electric_vehicles_sold else 0 end) as EV_FY22,
       sum(case when d.fiscal_year=2024 then s.electric_vehicles_sold else 0 end) as EV_FY24
from sales_by_state s
join dim_date d
on s.date = d.date
       group by s.state),
state_forecast_base as (
select t10.state,
       cc.EV_FY22,
       cc.EV_FY24,
       (pow
       (EV_FY24 / nullif(EV_FY22,0),
       1.0 /(2024-2022))
       - 1)
       * 100 as CAGR
from cagr_cal cc
join top_10 as t10
using (state)
)
select sfb.state,
       sfb.EV_FY22,
       sfb.EV_FY24,
       sfb. CAGR,
       round(EV_FY24 * POW(1 + CAGR/100, 6),0) as Forecast_FY30
from state_forecast_base sfb
order by Forecast_FY30 desc

