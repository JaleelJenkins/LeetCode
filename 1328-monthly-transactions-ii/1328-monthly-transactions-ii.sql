/* Write your PL/SQL query statement below */
select 
    TO_CHAR(TRUNC(trans_date, 'mm'), 'yyyy-mm') as month,
    country,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) as approved_count,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) as approved_amount,
    SUM(CASE WHEN state = 'chargeback' THEN 1 ELSE 0 END) as chargeback_count,
    SUM(CASE WHEN state = 'chargeback' THEN amount ELSE 0 END) as chargeback_amount
from ((
    select c.trans_id as id, t.country, 'chargeback' state, t.amount, c.trans_date
    from chargebacks c inner join transactions t on c.trans_id = t.id
)
union
    select * from transactions where state = 'approved')
group by TRUNC(trans_date, 'mm'), country
order by 1, 2;