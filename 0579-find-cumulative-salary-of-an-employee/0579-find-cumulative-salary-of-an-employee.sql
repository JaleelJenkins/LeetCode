/* Write your PL/SQL query statement below */
select e1.id, e1.month, coalesce(e1.salary, 0) + coalesce(e2.salary, 0) + coalesce(e3.salary, 0) salary
from (
    select id, max(month) as max_month
    from employee
    group by id
    having count(*) > 1
) exclude_month
left join
employee e1 on e1.id = exclude_month.id 
and exclude_month.max_month > e1.month
left join employee e2
on e1.id = e2.id
and e1.month = e2.month +1
left join employee e3 
on e3.id = e2.id
and e3.month + 1 = e2.month
order by e1.id, e1.month desc ;