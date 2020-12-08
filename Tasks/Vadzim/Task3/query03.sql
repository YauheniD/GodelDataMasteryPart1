--Query 3
SELECT
    BusinessEntityID,
    FirstName,
    LastName
FROM Person.Person
WHERE 
    BusinessEntityID IN (SELECT BusinessEntityID FROM Sales.SalesPerson 
        WHERE BusinessEntityID IN (SELECT SalesPersonID FROM Sales.SalesOrderHeader 
            WHERE OrderDate > '2008-06-01')
    OR
    BusinessEntityID NOT IN (SELECT SalesPersonID FROM Sales.SalesOrderHeader))
ORDER BY BusinessEntityID
;
