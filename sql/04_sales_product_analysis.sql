-- Which product category generated the most revenue?
select
products.product_category_name,
sum(order_items.price) as total_revenue
from order_items
join products
on order_items.product_id=products.product_id
group by
products.product_category_name
order by
total_revenue DESC;

-- How much revenue was generated each month, which months generated the highest revenue?
select 
month(order_purchase_timestamp) as order_month,
year(order_purchase_timestamp) as order_year,
sum(order_items.price) as sum_of_revenue
from order_items
join orders
on order_items.order_id=orders.order_id
group by 
month(order_purchase_timestamp),
year(order_purchase_timestamp)
order by
sum_of_revenue DESC;

--How did revenue by product category change over time?
select 
year (orders.order_purchase_timestamp) as year_order,
products.product_category_name,
sum(order_items.price) as total_revenue
from orders
join order_items
on orders.order_id=order_items.order_id
join products
on order_items.product_id=products.product_id
group by
products.product_category_name,
year (orders.order_purchase_timestamp)
order by 
year_order,
total_revenue;

-- What is the average revenue per order in each state?
select
customers.customer_state,
sum (order_items.price) as total_revenue,
count(distinct orders.order_id) as number_of_orders,
sum(order_items.price)/count(distinct orders.order_id) as average_revenue_per_order
from customers
join orders
on customers.customer_id=orders.customer_id
join order_items
on orders.order_id=order_items.order_id
group by customers.customer_state
order by average_revenue_per_order desc;
