/* Write your PL/SQL query statement below 

    Problem: Write a solution that will, for each user, return the number of followers. Return the result table ordered by 
     user_id in ascending order.

     - Group by user
     - Return COUNT(followers)

*/

select user_id, COUNT(follower_id) as followers_count
from Followers
group by user_id
order by user_id ASC