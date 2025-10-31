# Write your MySQL query statement below
SELECT
    Q.query_name,
    ROUND(AVG(Q.rating / Q.position), 2) AS quality,
    ROUND(SUM(CASE WHEN (Q.rating < 3) THEN 1 ELSE 0 END)/COUNT(*) * 100, 2) AS poor_query_percentage
FROM Queries Q
GROUP BY query_name;
