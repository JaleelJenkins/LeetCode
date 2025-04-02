# Write your MySQL query statement below

# Write an SQL query to report all customers who never order anything


Select name as customers 
from customers 
where id NOT IN(
        select c.id
        from customers c
        join orders o
            ON c.id = o.customerId);