SELECT DISTINCT
       sp.BusinessEntityID,
       pp.FirstName,
       pp.LastName
FROM Sales.SalesPerson sp
JOIN Sales.SalesOrderHeader soh ON sp.BusinessEntityID = soh.SalesPersonID
JOIN HumanResources.Employee e ON sp.BusinessEntityID = e.BusinessEntityID
JOIN Person.Person pp ON e.BusinessEntityID = pp.BusinessEntityID
WHERE sp.BusinessEntityID NOT IN (
    SELECT DISTINCT
           SalesPersonID
    FROM sales.SalesOrderHeader
    WHERE SalesPersonID IS NOT NULL
    GROUP BY SalesPersonID
    HAVING MAX(OrderDate) >=
    (
        SELECT DISTINCT
               OrderDate
        FROM Sales.SalesOrderHeader
        WHERE OrderDate = '2008-06-01'
    )
)
;
