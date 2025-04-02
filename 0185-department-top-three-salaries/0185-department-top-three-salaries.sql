# Write your MySQL query statement below
/* 
    A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.
    
    Write an SQL query to find the employees who are high earners in each of the departments.

    Return the result table in any order.
    
    Resolution: RANK windows function, create a ranking per department then filter to the top 3.
*/

SELECT Department.Name AS "Department", e.Name AS "Employee", e.Salary FROM 
(SELECT DepartmentId, Name, Salary, DENSE_RANK() OVER(PARTITION BY DepartmentId ORDER BY Salary DESC) AS r #DENSE_RANK allows for ties!
FROM Employee) e
JOIN Department ON e.DepartmentId = Department.Id
WHERE r <= 3; #Filter rank to less than or equal to 3 to only get the Top 3