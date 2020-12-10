--Task 3
SELECT 
    SalesOrderID,
    OrderDate,
    CustomerID,
    ROW_NUMBER() OVER(PARTITION BY OrderDate ORDER BY SalesOrderID) AS rownum
FROM Sales.SalesOrderHeader
;
