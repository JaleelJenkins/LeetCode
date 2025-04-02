# Write your MySQL query statement below
/*Write an SQL query to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places.*/
/*Solution: LEFT JOIN 
        Steps: 
            1. Get the first login date per player, by selecting player_id with minimum event_date for each palyer.
            2. Self join to see if there is a second login the following day and see what mactches you get.
            3. Use a Left Join to get the total, what players logged in and but also what players didn't in order to be used to calculate the fraction.
            4. Count() those matches.
            5. The driving table with all of the elements or player id's (table a) is used in the denominator to calculate the fraction. Over the distinct id's of players
                who we found a match for. 
            6. Use ROUND() to set the result output to a decimal ratio limited to 2
        
    */

SELECT ROUND(COUNT(DISTINCT b.player_id)/COUNT(DISTINCT a.player_id),2) AS fraction FROM
(
SELECT player_id, MIN(event_date) AS event_date FROM Activity
GROUP BY player_id
    ) a LEFT JOIN Activity b ON a.player_id = b.player_id AND a.event_date+1 = b.event_date 

