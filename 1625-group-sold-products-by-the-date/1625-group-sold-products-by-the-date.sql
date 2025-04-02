/* Write your PL/SQL query statement below 

    Problem: Write a solution to find for each date the number of different products sold and their name. Sort by name, sell_date.

    - TRUNC( ) - Used to drop the timestamp from the date

*/

select to_char(a.sell_date, 'yyyy-mm-dd') as sell_date,
    COUNT(a.product) as num_sold, 
    LISTAGG(a.product, ',') WITHIN GROUP (ORDER BY product) as products
from (select distinct * from Activities) a
group by a.sell_date
order by a.sell_date