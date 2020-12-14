--Query 1
SELECT
    SalesOrderID,
    OrderDate,
    CustomerID
FROM Sales.SalesOrderHeader
WHERE OrderDate IN (SELECT MIN(OrderDate) FROM Sales.SalesOrderHeader)
;
