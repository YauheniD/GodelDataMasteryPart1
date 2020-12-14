-- # 4. Show the count of employees by Gender and MaritalStatus. Please order dataset by these fields. 
--      Also please make it more readable by converting Gender and MaritalStatus like F - Female, M - Male and S - Single, M - Married.
SELECT CASE Gender 
   WHEN 'M' THEN 'Male'
   WHEN 'F' THEN 'Female'
   ELSE 'Undefined' END Gender,
    CASE MaritalStatus
   WHEN 'M' THEN 'Married'
   WHEN 'S' THEN 'Single'
   ELSE 'Undefined' END MaritalStatus,
   COUNT(*)
FROM HumanResources.Employee
GROUP BY Gender, MaritalStatus
ORDER BY Gender, MaritalStatus
;
