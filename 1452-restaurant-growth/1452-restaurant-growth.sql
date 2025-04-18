# Write your MySQL query statement below
with cte as (
select visited_on, SUM(amount) as total_amount
from customer
group by visited_on
),

cte2 AS (
select visited_on, SUM(total_amount) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
ROUND(AVG(total_amount) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS average_amount
from cte
)

select *
from cte2
where visited_on >= (select visited_on from cte2 order by visited_on limit 1) + 6
order by visited_on asc