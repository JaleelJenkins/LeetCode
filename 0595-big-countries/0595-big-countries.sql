/* Write your PL/SQL query statement below 

  A country is big if:

    It has an area of at least three million (i.e., 3000000 km2), or
    It has a population of at least twenty-five million (i.e., 25000000).

Write an SQL query to report the name, population, and area of the big countries.

Table: World

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | int     |
+-------------+---------+
name is the primary key column for this table.
Each row of this table gives information about the name of a country, the continent to which it belongs, its area, the population, and its GDP value.

*/

SELECT name, population, area 
FROM world
WHERE area >= '3000000'
 OR population >= '25000000';