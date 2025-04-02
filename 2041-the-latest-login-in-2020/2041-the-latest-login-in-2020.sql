/* Write your PL/SQL query statement below 

    Problem: Write a solution to report the latest login for all users in the year 2020. Do not include the users who did not login in 2020.

     - Filter to the year 2020
     - MAX(date) as latest
*/

select user_id, MAX(time_stamp) as last_stamp
from Logins
where EXTRACT(YEAR FROM time_stamp) = '2020'
group by user_id