/* Write your PL/SQL query statement below 

    Problem: Write a solution to find the ids of products that are both low fat and recycleable.

     - Filter on low fat = 'Y' and recycleable = 'Y'
     - Return product_id
*/

select product_id
from Products
where low_fats = 'Y' and recyclable = 'Y'