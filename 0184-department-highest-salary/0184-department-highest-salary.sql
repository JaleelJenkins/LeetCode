# Write your MySQL query statement below
/*
    Write an SQL query to find employees who have the highest salary in each of the departments.

    Return the result table in any order.
*/

SELECT Department.Name AS Department, Employee.Name AS Employee, Salary
From Employee JOIN Department ON Employee.DepartmentId = Department.ID
WHERE (DepartmentId, Salary) IN
(SELECT DepartmentId, MAX(Salary) FROM Employee 
GROUP BY DepartmentId) #First find the highest salary per department; 