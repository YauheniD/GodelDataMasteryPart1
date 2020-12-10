--Task 4
WITH Orders_CTE 
(
    SalesOrderID,
    OrderDate,
    CustomerID,
    rownum
) AS
(
    SELECT 
        SalesOrderID,
        OrderDate,
        CustomerID,
        ROW_NUMBER() OVER(PARTITION BY OrderDate ORDER BY SalesOrderID) AS rownum
    FROM Sales.SalesOrderHeader
)
SELECT 
    SalesOrderID,
    OrderDate,
    CustomerID,
    rownum
FROM Orders_CTE
WHERE rownum BETWEEN 11 AND 100
;
