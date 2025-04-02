/* 
    Write your PL/SQL query statement below 
    
    Problem: Write a solution to find the rows that contain the median salary of each comapny. While calculating
    the median, when you sort the salaries of the company, break the ties by id.

      - Find Median Salary in SQL grouped by companny, id
*/

with cte as 
(
    select 
        id,
        company,
        salary,
        count(*) over(partition by company) cnt,
        rank() over(partition by company order by salary,id ) rnk
    from employee
)

select 
    id,
    c.company,
    salary    
from cte c join (select company, round(max(rnk)/2,0) rnk2 from cte group by company) d on c.company= d.company
where (rnk in (rnk2,rnk2+1) and mod(cnt,2)=0) or (mod(cnt,2)=1 and rnk =rnk2)