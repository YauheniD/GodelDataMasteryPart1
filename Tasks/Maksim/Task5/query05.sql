--Query  5
SELECT emp.BusinessEntityID,
       person.LastName,
       person.FirstName
FROM HumanResources.Employee emp
INNER JOIN HumanResources.EmployeeDepartmentHistory history
        ON emp.BusinessEntityID = history.BusinessEntityID
INNER JOIN HumanResources.Department D
        ON D.DepartmentID = history.DepartmentID
INNER JOIN Person.Person person
        ON emp.BusinessEntityID = Person.BusinessEntityID
WHERE D.Name='Sales'
EXCEPT
SELECT emp.BusinessEntityID,
       person.LastName,
       person.FirstName
FROM HumanResources.Employee emp
INNER JOIN Person.Person person
        ON emp.BusinessEntityID = Person.BusinessEntityID
INNER JOIN Sales.SalesPerson SP
        ON emp.BusinessEntityID = SP.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader SOH
        ON SP.BusinessEntityID = SOH.SalesPersonID
WHERE YEAR(SOH.OrderDate) = 2012
;
