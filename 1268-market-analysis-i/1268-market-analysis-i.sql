# Write your MySQL query statement below
SELECT user_id as buyer_id, join_date, IFNULL(purchases, 0) orders_in_2019
FROM Users u 
LEFT JOIN 
    # For each buyer calculate the number of purchases in 2019
    (SELECT buyer_id, COUNT(*) purchases
     FROM orders 
     WHERE YEAR(order_date) = '2019'
     GROUP BY buyer_id) o
 ON u.user_id = o.buyer_id