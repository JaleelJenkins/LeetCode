# Write your MySQL query statement below
select a.person_name
from (
select person_name, turn, SUM(weight) OVER (ORDER BY turn) AS total_weight
from Queue
order by turn
) a where total_weight <= 1000
order by a.turn DESC
limit 1
