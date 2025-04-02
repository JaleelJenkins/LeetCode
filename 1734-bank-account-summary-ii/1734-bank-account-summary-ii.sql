# Write your MySQL query statement below

Select name, balance
from (
Select a.name, a.account, SUM(b.amount) AS balance
from users a JOIN transactions b ON a.account = b.account
group by account)t
where balance > '10000';
