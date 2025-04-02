/* Write your PL/SQL query statement below 

    Problem: Write a solution to report the Capital gain/loss for each stock.

    Leetcode stock was bought at day 1 for 1000$ and was sold at day 5 for 9000$. Capital gain = 9000 - 1000 = $8000
    
        Selling Price - Buying Price = Capital Gain/Loss

    If we are buying then the price is a loss or negative.
*/

select stock_name, SUM(CASE WHEN operation = 'Buy' THEN price * -1 ELSE price END) AS capital_gain_loss
from Stocks
group by stock_name