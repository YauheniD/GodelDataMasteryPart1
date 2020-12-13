--Query 9
DELETE FROM tempdb.dbo.Product
OUTPUT 
    DELETED.ProductID
WHERE ProductID IN (SELECT DISTINCT ssod.ProductID
    FROM AdventureWorks2019.Sales.SalesOrderDetail AS ssod
    JOIN AdventureWorks2019.Sales.SalesOrderHeader AS ssoh 
        ON (ssod.SalesOrderID = ssoh.SalesOrderID)
    JOIN(
    SELECT TOP(10) 
        ssod.ProductID,
        MIN(ssod.LineTotal) AS TotalPrice
    FROM AdventureWorks2019.Sales.SalesOrderDetail AS ssod
    JOIN AdventureWorks2019.Sales.SalesOrderHeader AS ssoh 
        ON (ssod.SalesOrderID = ssoh.SalesOrderID)
    GROUP BY ssod.ProductID
    ORDER BY TotalPrice ) AS X ON (X.ProductID = ssod.ProductID)
)

;
