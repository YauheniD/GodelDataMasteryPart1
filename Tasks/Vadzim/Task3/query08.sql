--Query 8
SELECT DISTINCT
    sc.CustomerID,
    MONTH(ssoh.OrderDate) AS Month,
    SUM(ssod.OrderQty) OVER(PARTITION BY sc.CustomerID, MONTH(ssoh.OrderDate)  ),
    SUM(ssod.OrderQty) OVER(PARTITION BY sc.CustomerID ORDER BY sc.CustomerID , MONTH(ssoh.OrderDate)) AS CustomerSalesOverYear
FROM Sales.Customer AS sc
JOIN Sales.SalesOrderHeader AS ssoh ON (ssoh.CustomerID = sc.CustomerID)
JOIN Sales.SalesOrderDetail AS ssod ON (ssod.SalesOrderID = ssoh.SalesOrderID)
WHERE sc.PersonID IN (SELECT BusinessEntityID FROM Person.Person WHERE LastName = 'Adams')
;
