# Write your MySQL query statement below
# Problem: This is a running total problem up to a certain date. Need to self join this Activity table on event_date to look at the current date and all rows before that current date. Then finally SUM up all of the previous rows before that date.

SELECT a.player_id, a.event_date, SUM(b.games_played) AS games_played_so_far FROM Activity a JOIN Activity b ON a.player_id = b.player_id AND a.event_date >= b.event_date
GROUP BY a.player_id, a.event_date;