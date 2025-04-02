/* Write your PL/SQL query statement below 

    Problem: Write a solution to calculate the bonus of each employee. The bonus of an employee is 100% of their salary
    if the ID of the employee is an odd number and the employee's name does not start with the character 'M'. The bonus of 
    an employee is 0 otherwise.

     - group by employee
     - case statement based on business rules
*/

select employee_id, CASE WHEN MOD(employee_id, 2) <> 0 AND SUBSTR(name, 0, 1) <> 'M' THEN SUM(salary) ELSE 0 END as bonus
from Employees
group by employee_id, name
order by employee_id 