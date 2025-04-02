/* Write your PL/SQL query statement below */
-- Key point: Within 90 days from today (2019-06-30) can be both forward and back.
-- #2 - Tracking the number of users logged in for the first time, not total users.
-- Need a subquery to calculate the first login date for each user, giving you only one distinct date per user.

select 
    TO_CHAR(first_login_date, 'YYYY-MM-DD') as login_date, 
    COUNT(user_id) as user_count
from (
    select user_id, MIN(activity_date) as first_login_date
    from Traffic t
    where activity = 'login'
    group by user_id
)
where first_login_date between TO_DATE('2019-06-30') - 90 and TO_DATE('2019-06-30') + 90
group by first_login_date
order by 1 ;