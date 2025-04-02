/* Write your PL/SQL query statement below 

    Problem: Write a solution to calculate the total time in minutes spent by each employee on each day at the 
    office. Note that within one day an employee can enter and leave more than once. Time spent in the office for a single 
    entry is out_time - in_time.

    - Group by employee, day
    - Total time in_time - out_tim ** The catch is they can do this multiple in a day

*/

select trim(event_day) as day, emp_id, SUM(out_time - in_time) as total_time
from Employees
group by emp_id, event_day