/* Write your PL/SQL query statement below Write a solution to find the people who have the most friends and the most friends number.

The test cases are generated so that only one person has the most friends.*/

with cte as (
select id, count(*) as num from(
        select requester_id as id from RequestAccepted
         union all
        select accepter_id as id from RequestAccepted
) group by id
)

select id, num
from cte 
where num = (select max(num) from cte);