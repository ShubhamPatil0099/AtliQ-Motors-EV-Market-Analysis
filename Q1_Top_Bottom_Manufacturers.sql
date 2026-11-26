 -- Q1.List the top 3 and bottom 3 makers for the fiscal years 2023 and 2024 in terms of the number of 2-wheelers sold.
 -- top 3 for 2024
 select fiscal_year, maker,
      sum(electric_vehicles_sold) as total_sales
 from sales_by_makers m
      join dim_date d
      using(date)
 where vehicle_category = "2-wheelers" and
       fiscal_year = 2024
group by fiscal_year, maker
order by total_sales desc
limit 3;

-- bottom 3 for 2024
select fiscal_year, maker,
      sum(electric_vehicles_sold) as total_sales
 from sales_by_makers m
      join dim_date d
      using(date)
 where vehicle_category = "2-wheelers" and
       fiscal_year = 2024
group by fiscal_year, maker
order by total_sales 
limit 3;


-- Alternate option if we want both tables -- using sub-query
( select 'top3' as category, fiscal_year, maker,
      sum(electric_vehicles_sold) as total_sales
 from sales_by_makers m
      join dim_date d
      using(date)
 where vehicle_category = "2-wheelers" and
       fiscal_year = 2024
group by fiscal_year, maker
order by total_sales desc
limit 3)
union
(select 'bottom3' as category, fiscal_year, maker,
      sum(electric_vehicles_sold) as total_sales
 from sales_by_makers m
      join dim_date d
      using(date)
 where vehicle_category = "2-wheelers" and
       fiscal_year = 2024
group by fiscal_year, maker
order by total_sales asc
limit 3)