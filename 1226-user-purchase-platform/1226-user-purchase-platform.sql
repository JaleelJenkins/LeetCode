/* Write your PL/SQL query statement below */
-- Think in terms of the data you want to recieve. 
-- Total (sum) of all users per each platform on each date. 
-- Code for one case first. Total amount spent using moblie only

with cte1 as -- CTE1 to categorize the platform as 'both' in the SPENDING table.
(select spend_date, user_id, case when COUNT(DISTINCT platform) = 2 then 'both' else MAX(platform) end as platform, SUM(amount) as amount 
from Spending
group by spend_date, user_id),
cte2 as -- CTE2 to get the distinct spend_date and all unique platform categories.
(select distinct t1.spend_date, t2.platform
from Spending t1
cross join 
(select 'both' as platform from dual
union 
select 'mobile' as platform from dual
union 
select 'desktop' as platform from dual) t2)
-- Contact CTE1 and CTE2, then group by SPEND_DATE and PLATFORM
select to_char(spend_date, 'YYYY-MM-DD') as spend_date, platform,
SUM(amount) as total_amount, COUNT(DISTINCT user_id) as total_users
from 
((select * from cte1)
union all
(select spend_date, null as user_id, platform, 0 as amount
from cte2))
group by spend_date, platform