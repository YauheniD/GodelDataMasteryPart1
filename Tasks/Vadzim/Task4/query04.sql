--Query 4
WITH T3 (SalesOrderID, OrderDate, CustomerID, RowNumber)
AS
(
    SELECT
        SalesOrderID,
        OrderDate,
        CustomerID,
        ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY OrderDate, SalesOrderID) AS RowNumber  
    FROM Sales.SalesOrderHeader
)
SELECT
    SalesOrderID,
    OrderDate,
    CustomerID,
    RowNumber
FROM T3
WHERE RowNumber BETWEEN 11 AND 100
;
