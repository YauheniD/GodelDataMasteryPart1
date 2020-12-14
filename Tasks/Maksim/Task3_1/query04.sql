--Query  4
SELECT CASE
         WHEN emp.Gender='M' THEN 'Male'
         WHEN emp.Gender='F' THEN 'Female'
         ELSE 'Non-binary'
       END Gender,
       CASE
         WHEN emp.MaritalStatus='M' THEN 'Married'
         WHEN emp.MaritalStatus='s' THEN 'Single'
         ELSE NULL
       END MaritalStatus,
       COUNT(*) Count
FROM HumanResources.Employee emp
GROUP BY Gender,MaritalStatus
ORDER BY Gender, MaritalStatus
;
