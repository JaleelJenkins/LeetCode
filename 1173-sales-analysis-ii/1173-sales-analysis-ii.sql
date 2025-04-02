/* Write your PL/SQL query statement below */
-- Goal: Report buyers who bought the S8 and not an iPhone

select A.buyer_id
from  sales A
inner join product B on A.product_id = B.product_id
where B.product_name in ('S8','iPhone')
group by A.buyer_id
having sum(case when B.product_name = 'iPhone' then 1 else 0 end) = 0 and 
        sum(case when B.product_name = 'S8' then 1 else 0 end) > 0;
