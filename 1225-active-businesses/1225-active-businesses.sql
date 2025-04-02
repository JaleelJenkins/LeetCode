/* Write your PL/SQL query statement below */
select business_id
  from (
select business_id
      ,avg(occurrences) over(partition by event_type) event_avg_activity
      ,occurrences
  from events
      )
 where occurrences > event_avg_activity
group by business_id
having count(1) > 1
