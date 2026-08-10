CREATE DATABASE blinkit;
USE blinkit;
select * from blinkit_cleaned;
select round(sum(item_outlet_sales)) as total_sales from blinkit_cleaned;

select item_type,count(*) as product,
round(avg(item_outlet_sales)) as avg_sales 
from blinkit_cleaned group by item_type
order by avg_sales desc;

select item_type,max(item_outlet_sales) as max_sales
from blinkit_cleaned group by item_type 
order by max_sales desc;

select item_type,max(item_outlet_sales) as max_sales
from blinkit_cleaned group by item_type 
order by max_sales asc;


SELECT
    Item_Fat_Content,
    COUNT(*) AS Total_Products,
    ROUND(SUM(Item_Outlet_Sales)) AS Total_Revenue,
    ROUND(AVG(Item_Outlet_Sales)) AS Avg_Sales
FROM blinkit_cleaned
GROUP BY Item_Fat_Content
ORDER BY Total_Revenue DESC;

 select item_type, count(*)  as total_product,
 round(avg(item_mrp)) as avg_mrp
 from blinkit_cleaned group by item_type;
 
 select item_type,count(*) as total_product
  from blinkit_cleaned group by item_type 
 order by total_product desc;

select outlet_type,count(*) as total_outlets,
round(max(item_outlet_sales)) as total_rev from blinkit_cleaned group by outlet_type
order by total_rev desc;

select outlet_type,count(*) as total_outlets,
round(avg(item_outlet_sales)) as avg_sale from blinkit_cleaned group by outlet_type
order by avg_sale desc;

select distinct outlet_size,outlet_type,count(*) as total_outlets,
round(max(item_outlet_sales)) as max_sale from blinkit_cleaned group by outlet_size,outlet_type
order by max_sale desc;

select outlet_type,Outlet_Location_Type,outlet_size,
round(max(item_outlet_sales)) as max_rev from blinkit_cleaned group by outlet_type,Outlet_Location_Type,outlet_size
order by max_rev desc;

select outlet_type,Outlet_Location_Type,outlet_size,outlet_establishment_year,
round(max(item_outlet_sales)) as max_rev from blinkit_cleaned group by outlet_establishment_year,outlet_type,Outlet_Location_Type,outlet_size
order by max_rev desc;

select round(avg(item_mrp)) as avg_mrp from blinkit_cleaned;

select item_type,item_mrp,round(max(item_mrp)) as highest_price from blinkit_cleaned 
group by item_type,item_mrp order by highest_price desc;

select item_fat_content,count(*) as total_product 
from blinkit_cleaned group by item_fat_content;

select distinct item_type,item_outlet_sales,round(max(item_outlet_sales)) as total_sales
from blinkit_cleaned group by item_type,item_outlet_sales order by total_sales desc limit 10;