/* Problem: 1132. Reported Posts 2
    Output: Return the average daily percentage of post that got removed after being reported as sacm. 
    
       Breakdown: 
        - First, need to find post that were reported as spam from the Actions table. This means action = 'report' and 'spam'
        - Next, match these to the removals table to see which ones were removed based on post_id.
        - For each day:
            + Count total spam reports
            * Count how many of those spam-reported posts were removed
            * Calculate percentage = (removed_posts / total_spam_reports) * 100 
*/

with cte as (
    select a.post_id, 
           r.post_id as removed_post_id,
           a.action_date
    from actions a left join removals r on a.post_id = r.post_id
    where a.action = 'report' and a.extra = 'spam'
),
cte1 as (
    select action_date,
            count(distinct removed_post_id)/count(distinct post_id) * 100 as daily_removed_pct
    from cte group by action_date
) 

select round(avg(daily_removed_pct), 2) as average_daily_percent 
from cte1