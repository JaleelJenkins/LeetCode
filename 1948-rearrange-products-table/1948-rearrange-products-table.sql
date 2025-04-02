/* Write your PL/SQL query statement below 

    Problem: Write a solution to rearrange the Products table so that each row has product_id, store, price. If a product is 
    not available do no include it.

     - Roll up store columns into rows to lengthen the table desgin.
*/

select product_id,
       LOWER(store) as store,
       price
from Products 
unpivot (
    price for store in (store1, store2, store3)
) unpiv
where price is not null