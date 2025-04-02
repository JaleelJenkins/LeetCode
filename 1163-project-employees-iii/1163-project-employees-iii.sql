/* Write your PL/SQL query statement below */
select project_id, employee_id 
from 
    (select project_id, e.employee_id, 
    dense_rank() OVER (partition by project_id order by experience_years desc) dns
    from employee e join project p 
     on e.employee_id = p.employee_id) rank_exp
where dns = 1 ;