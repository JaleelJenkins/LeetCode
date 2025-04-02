/* 
    Write your PL/SQL query statement below 

Problem: Write a solution to report the respective department name and number of students majoring in each department for all departments in the Department table. Return the results table ordered by student_number in descending order. In case of a tie, order them by dept_name
alphabetically.
*/

SELECT DISTINCT d.dept_name, COUNT(s.student_id) OVER (PARTITION BY d.dept_id) AS student_number
FROM Department d LEFT JOIN Student s
 ON d.dept_id = s.dept_id
ORDER BY student_number desc
