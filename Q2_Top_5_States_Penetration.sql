-- Q2. top 5 state by penetration rate
select fiscal_year,
       state,
       sum(electric_vehicles_sold) as elec_sales,
       sum(total_vehicles_sold) total_sales,
       sum(electric_vehicles_sold*100)/sum(total_vehicles_sold) as penetration_rate
 from sales_by_state s
 join dim_date d 
 on s.date = d.date
 where fiscal_year = 2024
 group by fiscal_year, state
 order by penetration_rate desc
 limit 5;
 
 -- top 5 state by penetration_rate for 2-wheelers
 select fiscal_year,
       state,
       sum(electric_vehicles_sold) as elec_sales,
       sum(total_vehicles_sold) total_sales,
       round(sum(electric_vehicles_sold*100)/sum(total_vehicles_sold),2) as penetration_rate
 from sales_by_state s
 join dim_date d 
 on s.date = d.date
 where fiscal_year = 2024 and vehicle_category = "2-wheelers"
 group by fiscal_year, state
 order by penetration_rate desc
 limit 5;
 
  -- top 5 state by penetration_rate for 4-wheelers
  select fiscal_year,
       state,
       sum(electric_vehicles_sold) as elec_sales,
       sum(total_vehicles_sold) total_sales,
       round(sum(electric_vehicles_sold*100)/sum(total_vehicles_sold),2) as penetration_rate
 from sales_by_state s
 join dim_date d 
 on s.date = d.date
 where fiscal_year = 2024 and vehicle_category = "4-wheelers"
 group by fiscal_year, state
 order by penetration_rate desc
 limit 5;
