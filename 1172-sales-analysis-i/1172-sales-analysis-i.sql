/* Write your PL/SQL query statement below */
-- Goal: Report best seller by total sales price per seller id. 
-- No way to run two seperate aggregate functions in the same query without using a CTE or nested queries

select seller_id 
from (
    select seller_id, rank() over (order by sum(price) desc) rk
    from Sales
    group by seller_id
)
where rk = 1

