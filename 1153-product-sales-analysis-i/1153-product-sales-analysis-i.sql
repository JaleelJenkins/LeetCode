# Write your MySQL query statement below
SELECT product_name, year, price
FROM Product
 JOIN Sales
ON product.product_id = sales.product_id

