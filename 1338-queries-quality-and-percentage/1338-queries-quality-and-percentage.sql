# Write your MySQL query statement below
select 
    query_name,
    round(avg(cast(rating as decimal) / position), 2) as quality,
    round(sum(case when rating < 3 then 1 else 0 end) / count(*) * 100, 2) AS poor_query_percentage
from queries
where query_name IS NOT NULL
group by query_name

