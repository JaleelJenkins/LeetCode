/* 
    Write your PL/SQL query statement below 

     Problem: Write a solution to find the percentage of the users registered in each contest rounded to two decimals. Order by
      percentage descending as well as contest ascending.

    Steps:
        - Get percentage of users for each contest. 
            -- There are 3 user id's total.
            -- Register table is one to many, one user id to many different contest.
            -- Formula would be total count per contest logged in register / total number of users * 100

*/

 
select r.contest_id, ROUND((COUNT(r.contest_id)/(select count(user_id) from users))*100.00,2) as percentage
from Users u
 join Register r on u.user_id = r.user_id
group by r.contest_id
order by percentage desc, r.contest_id asc