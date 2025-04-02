/* Write your PL/SQL query statement below */

-- exclude books available for less than a month
select b.book_id, b.name
from Books b 
 left join Orders o 
  on b.book_id = o.book_id
   and o.dispatch_date between to_date('2018-06-23', 'YYYY-MM-DD') 
   and to_date('2019-06-22', 'YYYY-MM-DD')
where b.available_from < to_date('2019-05-24', 'YYYY-MM-DD')
group by b.book_id, b.name
having sum(nvl(o.quantity, 0)) < 10

