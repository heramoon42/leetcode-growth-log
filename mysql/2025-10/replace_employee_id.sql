SELECT
    NI.unique_id AS unique_id,
    es.name AS name
FROM Employees AS es
LEFT JOIN
    EmployeeUNI AS NI
    ON es.id = NI.ID;