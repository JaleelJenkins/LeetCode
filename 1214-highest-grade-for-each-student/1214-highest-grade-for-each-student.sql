/* Write your PL/SQL query statement below */
-- Higest grade per corresponding course for each student
-- Key point: Use a dense rank partition 

with rankedEnrollments as 
(
    select student_id,
            course_id,
            grade,
            dense_rank() over (partition by student_id order by grade desc, course_id) as rnk
    from enrollments
)

select student_id, course_id, grade
from rankedEnrollments
where rnk = 1




