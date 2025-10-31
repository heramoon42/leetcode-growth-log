# Write your MySQL query statement below
SELECT S.name
FROM SalesPerson S
WHERE S.name NOT IN (
SELECT S.name
FROM Orders O
JOIN SalesPerson S
    ON O.sales_id = S.sales_id
JOIN Company C
    ON O.com_id = C.com_id
WHERE C.name = 'RED'
)
