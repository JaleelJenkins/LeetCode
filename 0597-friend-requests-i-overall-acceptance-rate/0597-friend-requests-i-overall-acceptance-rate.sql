/* 
    Write your PL/SQL query statement below 
    
Problem: Find the overall acceptance rate of requests, which is the number of acceptance divided by the number of requests. Return the answer rounded to 2 decimals places.

*/
select NVL(Round(
    count(distinct A.requester_id||'-'||A.accepter_id)
    /NULLIF(count(distinct B.sender_id||'-'||B.send_to_id),0)
    ,2),0.00) as accept_rate
from requestAccepted A
cross join friendRequest B