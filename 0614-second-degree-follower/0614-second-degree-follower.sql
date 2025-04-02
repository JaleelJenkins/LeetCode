/* Write your PL/SQL query statement below */
SELECT followee as follower, count(*) as num
FROM Follow
WHERE followee IN (
    SELECT follower
    FROM Follow
)
GROUP BY followee
ORDER BY followee