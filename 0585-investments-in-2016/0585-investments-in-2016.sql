# Write your MySQL query statement below
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
# We find all the policies where the insured value in 2015 appears more than once.
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance 
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
# Next we find all the unique combinations of latitude and longitude where only one policy exist.
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
)

