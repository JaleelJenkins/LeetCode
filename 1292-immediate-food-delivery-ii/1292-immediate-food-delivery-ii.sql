# Write your MySQL query statement below

# Step 1: Calculate the minimum order date of each customer
with first_orders as 
(select customer_id, MIN(order_date) as min_date
from delivery
group by customer_id)

select round(sum(case when min_date = customer_pref_delivery_date then 1 else 0 end)/ count(distinct fo.customer_id)*100, 2) immediate_percentage
from first_orders fo join delivery d
on fo.customer_id = d.customer_id and fo.min_date = d.order_date ;





