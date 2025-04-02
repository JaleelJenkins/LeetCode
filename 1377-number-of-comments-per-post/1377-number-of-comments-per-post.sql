/* Write your PL/SQL query statement below */
with main as
(select distinct sub_id ,parent_id from Submissions),
cnt as
(select parent_id post_id,count(1) number_of_comments from main
group by parent_id),
all_s as
(select sub_id post_id from main where parent_id is null)

select all_s.post_id, coalesce(number_of_comments,0) number_of_comments
from all_s left outer join cnt on all_s.post_id = cnt.post_id
order by 1




