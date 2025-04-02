/* Write your PL/SQL query statement below */
with cte as 
    (select
        question_id,
        sum(case when action = 'answer' then 1 else 0 end)/sum(case when action = 'show' then 1 else 0 end) as answer_rate
    from
        surveylog 
    group by
        question_id)
select
    question_id as survey_log
from
    (select
        question_id,
        rank() over (order by answer_rate desc,question_id asc) as rnk
    from
        cte)
where
    rnk = 1
order by 1