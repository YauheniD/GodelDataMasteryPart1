SELECT CASE 
           WHEN Gender = 'F'
                THEN 'Female'
           ELSE 'Male'
           END AS Gender,
       CASE 
           WHEN MaritalStatus = 'M'
                THEN 'Married'
           ELSE 'Single'
           END AS MartialStatus,
       COUNT(*) AS 'Count'
FROM HumanResources.Employee
GROUP BY Gender,
       MaritalStatus
ORDER BY Gender, MaritalStatus
;
