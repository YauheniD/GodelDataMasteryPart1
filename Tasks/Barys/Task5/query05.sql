--Task 5
SELECT 
    P.BusinessEntityID,
    P.LastName,
    P.FirstName
FROM HumanResources.EmployeeDepartmentHistory EDH 
JOIN Person.Person P
    ON P.BusinessEntityID = EDH.BusinessEntityID
JOIN HumanResources.Department D 
    ON EDH.DepartmentID = D.DepartmentID
WHERE 
    D.Name = 'Sales'
    AND
    EDH.EndDate IS NULL
EXCEPT
SELECT
    P.BusinessEntityID,
    P.LastName,
    P.FirstName
FROM HumanResources.Employee E
JOIN Person.Person P
    ON P.BusinessEntityID = E.BusinessEntityID
JOIN Sales.SalesOrderHeader SOH
    ON SOH.SalesPersonID = E.BusinessEntityID
WHERE YEAR(SOH.OrderDate) = 2012
;
