/* Write your PL/SQL query statement below 

    Problem: Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters
     used in the content of the tweet is strictly greater than 15.

     -- select id HAVING 

*/

select tweet_id
from Tweets
group by tweet_id, content
having length(content) > 15