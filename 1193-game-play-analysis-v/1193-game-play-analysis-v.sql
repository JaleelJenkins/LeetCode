/* Write your PL/SQL query statement below */

select to_char(install_date, 'YYYY-MM-DD') install_dt, installs, round(retentions/installs, 2) Day1_retention
from(
    select install_date, sum(case when install_date = event_date then 1 else 0 end) installs, 
        sum(case when install_date = event_date -1 then 1 else 0 end) retentions
    from (
        select player_id, event_date, min(event_date) over(partition by player_id order by event_date) install_date 
        from Activity
    ) 
    group by install_date
)