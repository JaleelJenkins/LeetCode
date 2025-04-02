/* Write your PL/SQL query statement below */
select team_id, team_name,
    sum(nvl(case 
        when a.team_id = b.host_team and a.team_id <> b.guest_team and host_goals > guest_goals then 3
        when a.team_id = b.host_team and a.team_id <> b.guest_team and host_goals = guest_goals then 1
        when a.team_id = b.guest_team and a.team_id <> b.host_team and guest_goals > host_goals then 3
        when a.team_id = b.guest_team and a.team_id <> b.host_team and guest_goals = host_goals then 1
            else 0
        end, 0)) num_points
from teams a 
 left join matches b on a.team_id = b.host_team or a.team_id = b.guest_team
group by team_id, team_name
order by 3 desc, 1 asc