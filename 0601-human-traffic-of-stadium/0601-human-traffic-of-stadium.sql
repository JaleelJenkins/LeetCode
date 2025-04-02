# Write your MySQL query statement below
with cte as (
    select *, id - row_number( ) over(order by id) as diff
    from Stadium
    where people > 99
)

select id, visit_date, people
from cte
where id in (
    select id from cte
    where diff in (
        select diff 
        from cte
        group by diff
        having count(diff) > 2))
order by visit_date
