# Write your MySQL query statement below
with pre_maxdate as
(
    select product_id, max(change_date) as pre_date
    from products
    where change_date <= '2019-08-16'
    group by product_id
)

select p.product_id, new_price price
from products p join pre_maxdate pre
on p.product_id = pre.product_id and p.change_date = pre.pre_date
union 
select distinct product_id, 10 price
from products where product_id not in (select product_id from pre_maxdate);
