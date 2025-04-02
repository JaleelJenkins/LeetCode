/* Write your PL/SQL query statement below */
select product_id, product_name FROM Product 
where product_id IN (
    select product_id FROM Sales 
    group by product_id HAVING MIN(sale_date) >= '2019-01-01'
    and MAX(sale_date) <= '2019-03-31'
)
