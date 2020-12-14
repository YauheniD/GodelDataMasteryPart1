--Query 4
SELECT
    CASE 
        WHEN Gender = 'F' THEN 'Female'
        WHEN Gender = 'M' THEN 'Male'
        ELSE NULL
    END AS Gender ,
    CASE 
        WHEN MaritalStatus = 'S' THEN 'Single'
        WHEN MaritalStatus = 'M' THEN 'Married'
        ELSE NULL
    END AS MaritalStatus,
    COUNT(*)
FROM HumanResources.Employee
GROUP BY Gender, MaritalStatus
ORDER BY Gender, MaritalStatus
;
