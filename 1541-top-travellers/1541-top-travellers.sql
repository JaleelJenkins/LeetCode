/* Write your PL/SQL query statement below 

    Problem: Write a solution to report the distance traveled by each user.

     - Driving Table: Rides 
      * Generally recommended to make the table on the preserved side (the side that should include all rows) the driver. *
     - In the case that two people have the same name, need to group by user.id as well.

*/

select name, NVL(SUM(distance), 0) as travelled_distance
from Users u
 left join Rides r on r.user_id = u.id -- left join because you want all the records from Users even when not matched.
group by u.id, name
order by travelled_distance desc, name
