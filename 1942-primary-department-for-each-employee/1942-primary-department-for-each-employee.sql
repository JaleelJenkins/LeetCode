/* Write your PL/SQL query statement below 

    Problem: Write a solution to report ALL the employees with their primary department. For employees who belong to one 
    department, report their only department.

     - Catch: When the employee belongs to only one department, their primary flag is 'N'
        * Need to make this a subquery to be filter as an OR
     - Employee and Department is a many to many relationship
*/

select employee_id, department_id 
from Employee
where primary_flag = 'Y' OR employee_id IN
(
select employee_id
from Employee 
group by employee_id 
having count(employee_id) = 1
 ) 

