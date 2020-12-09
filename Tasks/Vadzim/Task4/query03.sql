--Query 3
SELECT
    SalesOrderID,
    OrderDate,
    CustomerID,
    ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY OrderDate, SalesOrderID) AS RowNumber  
FROM Sales.SalesOrderHeader
;
