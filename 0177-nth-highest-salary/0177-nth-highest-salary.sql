CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
       select distinct salary as getNthHighestSalary from (select salary, dense_rank() over (order by salary desc) salrank from             employee) a
        where salrank = N
  );
END