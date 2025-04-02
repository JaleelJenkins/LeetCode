/* Write your PL/SQL query statement below 

    Problem: For each date_id and make_name, find the number of distinct lead_id's and distinct partner_id's

     - For each = group by, so group by date_id and make_name
     - Need to distinct query
*/

select trim(date_id) as date_id, make_name, COUNT(distinct lead_id) as unique_leads, 
 COUNT(distinct partner_id) as unique_partners
from DailySales 
group by date_id, make_name

