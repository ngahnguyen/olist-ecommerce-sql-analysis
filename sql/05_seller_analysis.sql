-- which sellers generate the most revenue?
select
sellers.seller_id,
sum(order_items.price) as total_revenue
from order_items
join sellers
on order_items.seller_id=sellers.seller_id
group by sellers.seller_id
order by total_revenue desc;

-- How many unique orders does each seller handle? 
select
order_items.seller_id,
count(distinct order_items.order_id) as number_of_orders
from order_items
group by order_items.seller_id
order by number_of_orders desc;
-- 
--How do sellers rank based on total revenue?
with seller_revenue as (
select seller_id,
sum(order_items.price) as total_revenue
from order_items
group by seller_id)

select seller_id,
total_revenue,
rank() over (order by total_revenue desc) as revenue_rank
from seller_revenue
order by revenue_rank;
