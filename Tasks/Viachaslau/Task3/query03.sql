SELECT BusinessEntityID,
       FirstName,
       LastName
FROM Person.Person
WHERE BusinessEntityID IN (
              SELECT BusinessEntityID
              FROM Sales.SalesPerson
              WHERE BusinessEntityID IN (
                            SELECT BusinessEntityID
                            FROM Sales.SalesOrderHeader
                            WHERE OrderDate < '06/01/2011'))
ORDER BY BusinessEntityID
;
