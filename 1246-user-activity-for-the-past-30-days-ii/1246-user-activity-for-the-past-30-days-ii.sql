/* Problem: 1142. User Activity for the Past 30 Days 2

    Understand what we're looking for,
        - Average number of sesssions per user for 30 days ending 2019-07-27.
        - Only want to count sessions with at least one activity in that time period.
        - Round answer to 2 decimal places.
    
    Breaking down that logic,
        - avg(count(session_id))

 */

SELECT ROUND(
    CASE 
        WHEN COUNT(DISTINCT user_id) = 0 THEN 0
        ELSE AVG(session_count)
    END, 2) as average_sessions_per_user
FROM (
    SELECT user_id, COUNT(DISTINCT session_id) as session_count
    FROM Activity
    WHERE activity_date BETWEEN 
        TO_DATE('2019-07-27', 'YYYY-MM-DD') - 29  -- start date
        AND TO_DATE('2019-07-27', 'YYYY-MM-DD')   -- end date
    GROUP BY user_id
);