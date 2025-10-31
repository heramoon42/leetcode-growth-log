# Write your MySQL query statement below
SELECT C.class
FROM Courses C
GROUP BY class
HAVING COUNT(student) >= 5;