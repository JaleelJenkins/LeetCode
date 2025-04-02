/* Write your PL/SQL query statement below 

    Problems: Write a solution to report the ids, and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer. Return ordered by employee_id

     - A manager is an employee with at least 1 other employee reporting to them.
     - Return employee_id, name, number of employees under a manager. 
     - Need to calculate who's manager and how many people report to them.
     - Find the average age of the reports rounded to the nearest integer.
     - Order by employee_id
*/

select distinct e.employee_id, 
                e.name, 
                COUNT(ee.employee_id) as reports_count,
                ROUND(AVG(ee.age)) as average_age
from Employees e
 join Employees ee ON e.employee_id = ee.reports_to
group by e.employee_id, e.name
order by e.employee_id