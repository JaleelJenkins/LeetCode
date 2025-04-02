# Write your MySQL query statement below
# Write an SQL query to report the device that is first logged in for each player.

SELECT a.player_id, b.device_id FROM 
(SELECT player_id, MIN(event_date) AS event_date FROM Activity
GROUP BY player_id) a JOIN Activity b ON a.player_id = b.player_id AND a.event_date = b.event_date