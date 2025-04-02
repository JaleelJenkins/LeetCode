# Write your MySQL query statement below
Select Email
from person
group by Email
having count(Email) > 1;