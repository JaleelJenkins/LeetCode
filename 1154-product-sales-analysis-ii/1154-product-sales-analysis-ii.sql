/* Write your PL/SQL query statement below */
select product_id, sum(quantity) AS total_quantity
from Sales
group by product_id