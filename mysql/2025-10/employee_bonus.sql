SELECT
    E.name,
    B.bonus
FROM Employee E
LEFT JOIN Bonus B
ON E.empId = B.empId
WHERE IFNULL(B.bonus, 0) < 1000;