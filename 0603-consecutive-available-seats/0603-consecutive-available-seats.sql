/* Write your PL/SQL query statement below */
select distinct b.seat_id from cinema a,cinema b
where ((a.seat_id=b.seat_id-1) or (a.seat_id-1=b.seat_id) )
and a.free=1 and b.free=1
order by 1