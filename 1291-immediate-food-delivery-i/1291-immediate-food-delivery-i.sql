/* Write your PL/SQL query statement below */
SELECT ROUND(
    (SELECT COUNT(*) FROM delivery WHERE order_date = customer_pref_delivery_date) * 100 /
    (SELECT COUNT(*) FROM delivery), 2) AS immediate_percentage
FROM dual