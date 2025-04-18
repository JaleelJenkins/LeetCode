/* Write your PL/SQL query statement below 

    Problem:
        Write an SQL query to report the names of the customer that are not referred by the customer with id = 2.
        
Table: Customer        
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.

*/


SELECT name
FROM customer
WHERE referee_id <> 2;
 OR referee_id IS NULL;