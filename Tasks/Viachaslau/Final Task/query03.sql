SELECT CASE 
              WHEN MiddleName IS NULL
                     THEN FirstName + ' ' + LastName
              ELSE FirstName + ' ' + MiddleName + ' ' + LastName
              END AS EmployeeFullName,
       LoginID,
       JobTitle,
       HUM_DEP.Name
FROM HumanResources.Employee AS HUM_EMP
INNER JOIN Person.Person AS PER_PER
       ON PER_PER.BusinessEntityID = HUM_EMP.BusinessEntityID
INNER JOIN HumanResources.EmployeeDepartmentHistory AS HUM_DEPHIST
       ON HUM_DEPHIST.BusinessEntityID = HUM_EMP.BusinessEntityID
INNER JOIN HumanResources.Department AS HUM_DEP
       ON HUM_DEP.DepartmentID = HUM_DEPHIST.DepartmentID
WHERE YEAR(HireDate) < 2009
;
