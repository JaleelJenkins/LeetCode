/* Write your PL/SQL query statement below */
/* What about in the case of ties, how would that be handled? */
  
  select max(salary) as SecondHighestSalary from employee where salary not in (select max(salary) from employee)