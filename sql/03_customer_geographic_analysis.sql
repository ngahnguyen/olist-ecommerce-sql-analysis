--How many orders came from each customer state? 
select 
customers.customer_state, count(*)  as number_of_orders_came_from_each_state
from orders
join customers 
on orders.customer_id=customers.customer_id
group by customers.customer_state
order by number_of_orders_came_from_each_state DESC;

-- Which customer states generated the most revenue? 

select
    customers.customer_state,
    sum(order_items.price) as total_revenue
from customers
join orders
    on customers.customer_id = orders.customer_id
join order_items
    on orders.order_id = order_items.order_id
group by customers.customer_state
order by total_revenue desc;

