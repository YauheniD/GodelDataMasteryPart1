--TASK  1
SELECT COUNT(*) Number_of_people
FROM HumanResources.Employee emp
INNER JOIN HumanResources.EmployeeDepartmentHistory history
        ON emp.BusinessEntityID = history.BusinessEntityID
INNER JOIN HumanResources.Department D 
        ON D.DepartmentID = history.DepartmentID
WHERE emp.MaritalStatus='M'
      AND
      D.Name='Sales'
;
