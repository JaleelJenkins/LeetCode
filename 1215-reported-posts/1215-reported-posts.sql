/* Write your PL/SQL query statement below */

select extra as report_reason, count(distinct post_id) as report_count
from Actions
where action = 'report' and action_date = TO_DATE('2019-07-05') - 1
group by extra