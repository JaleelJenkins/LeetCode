/* Write your PL/SQL query statement below */
SELECT p.firstname "firstName",p.lastname "lastName",a.city "city",a.state "state"
from person p left join address a
on p.personid=a.personid ;