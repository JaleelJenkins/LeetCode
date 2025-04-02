/* Write your PL/SQL query statement below 

    Problem: Write a solution to find the IDs of the users who visited without making any transactions and the 
     number of times they made these types of visits.

     - Need to drive with Visits table and pair all transactions even unmatched ones to visit_id

*/

select v.customer_id, COUNT(*) as count_no_trans
from Visits v
 left join Transactions t on v.visit_id = t.visit_id 
where transaction_id is null
group by v.customer_id
