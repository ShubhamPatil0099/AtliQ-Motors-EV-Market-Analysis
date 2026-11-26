-- Q5.Ev sales & pent_rate comparison for delhi & karnataka for 2024 for both category
select s.state,
       vehicle_category, 
	   sum(electric_vehicles_sold) as Ev_sales,
       sum(total_vehicles_sold) as total_vehicles_sales,
       round(sum(electric_vehicles_sold)*100 / sum(total_vehicles_sold),2) as penetration_rate
 from sales_by_state s
 join dim_date d 
 on s.date = d.date
 where fiscal_year = 2024 and
	   s.state in ('delhi','karnataka') 
 group by state, vehicle_category
 order by state, vehicle_category


