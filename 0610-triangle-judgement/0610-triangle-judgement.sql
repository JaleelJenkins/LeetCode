# Write your MySQL query statement below
# Business logic: Length of one line is less than the sum of the length of 2 others lines.

SELECT *, IF(x+y > z AND y+z > x AND z+x > y, "Yes", "No") as triangle 
FROM Triangle