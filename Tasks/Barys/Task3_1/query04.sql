--Query 4
SELECT
    CASE 
        WHEN Gender = 'F' THEN 'Female'
        WHEN Gender = 'M' THEN 'Male'
        ELSE 'Other'
    END AS Gender,
    CASE 
        WHEN MaritalStatus = 'S' THEN 'Single'
        WHEN MaritalStatus = 'M' THEN 'Married'
        ELSE 'Other'
    END AS MaritalStatus,
    COUNT(*) AS Count
FROM HumanResources.Employee
GROUP BY Gender, MaritalStatus
ORDER BY Gender, MaritalStatus
;
