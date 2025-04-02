/* Write your PL/SQL query statement below */
with America as (
    select name, row_number() over(order by name asc) as rn
    from Student
    where continent='America'
), Asia as (
    select name, row_number() over(order by name asc) as rn
    from Student
    where continent='Asia'
), Europe as (
    select name, row_number() over(order by name asc) as rn
    from Student
    where continent='Europe'
)

select America.name as "America", Asia.name as "Asia", Europe.name as "Europe"
from America
full outer join Asia
on America.rn=Asia.rn
full outer join Europe
on America.rn=Europe.rn