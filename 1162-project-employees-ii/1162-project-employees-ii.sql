/* Write your PL/SQL query statement below */
select project_id
from Project
group by project_id
having COUNT(*) = (
    select max(count(employee_id))
    from Project
    group by project_id
)