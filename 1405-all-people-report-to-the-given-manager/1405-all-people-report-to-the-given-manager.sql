# Write your MySQL query statement below

Select
e1.employee_id
from 
Employees e1 Join Employees e2 Join Employees e3 
on e1.manager_id = e2.employee_id
 And e2.manager_id = e3.employee_id

where e3.manager_id=1
and e1.employee_ID <> 1