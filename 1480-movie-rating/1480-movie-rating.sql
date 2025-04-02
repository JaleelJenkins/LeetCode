/* 
    Write your PL/SQL query statement below -

    Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically
     smaller user name.

    Find the movie name with the highest average rating in February 2020. In case of a tie return the lexicographically
     smaller movie name.

    Steps:
     - Use 2 cte's to find each statement then join back together
    
*/
    select *
    from (
    select name as results
    from MovieRating mr left join Users u on mr.user_id = u.user_id
    group by u.name
    order by count(mr.movie_id) desc, u.name)
     where rownum <= 1
    union all  
    select *
    from (
    select m.title as results
    from MovieRating mr left join Movies m on mr.movie_id = m.movie_id
    where mr.created_at like '2020-02%'
    group by m.title
    order by avg(mr.rating) desc, m.title)
     where rownum <= 1
