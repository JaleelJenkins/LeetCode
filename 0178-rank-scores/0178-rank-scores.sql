# Write your MySQL query statement below
Select Score, DENSE_RANK() OVER(ORDER BY Score DESC) AS "Rank" FROM Scores;

/* Without using a windows function
    SELECT Score, (SELECT COUNT(DISTINCT Score) FROM  Scores WHERE s2.Score => s1.Score) AS "Rank"
    FROM Scores s1
    ORDER BY s1.Score DESC
*/