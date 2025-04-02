# Write your MySQL query statement below
# Query grabs the minimum event date as the first login in for each player.
SELECT player_id, MIN(event_date) AS first_login FROM Activity
GROUP BY player_id