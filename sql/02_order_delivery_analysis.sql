-- Order count by status
select order_status,
count (*) as number_of_orders
from orders
group by order_status
order by number_of_orders DESC;
-- First and last order
select
min(order_purchase_timestamp) as first_order,
max(order_purchase_timestamp) as last_order
from orders;

-- How did order volume change by year?

select year(order_purchase_timestamp) as order_year,
count(*) number_orders_placed_each_year
from orders
group by year(order_purchase_timestamp)
order by order_year;

-- How did order volume change by month?

select month(order_purchase_timestamp) as order_month,
year(order_purchase_timestamp) as order_year,
count (*) as number_of_orders_placed_each_month
from orders
group by 
month (order_purchase_timestamp),
year(order_purchase_timestamp)
order by 
order_year,
order_month;

--How many orders delivered on time/late?

with delivery_status_cte as (
select
order_id,
case when order_delivered_customer_date is null then 'No Delivery Date'
When order_delivered_customer_date > order_estimated_delivery_date then 'Late'
ELSE 'On Time'
END AS delivery_status
from orders
)
select
delivery_status,
count (*) as number_of_orders
from delivery_status_cte
group by delivery_status
order by number_of_orders DESC;

