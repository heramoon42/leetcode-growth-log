# Write your MySQL query statement below
SELECT
    T.product_id,
    ROUND(IFNULL(SUM(T.price * T.units)/SUM(T.units), 0), 2) AS average_price
FROM
(SELECT
    P.product_id,
    P.price,
    S.units
FROM Prices P
LEFT OUTER JOIN UnitsSold S
ON  P.product_id = S.product_id
    AND S.purchase_date BETWEEN start_date AND end_date) AS T
GROUP BY T.product_id;