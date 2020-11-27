--Query 1
SELECT 
    SalesOrderID,
    OrderDate,
    CustomerID,
    SalesPersonID
FROM Sales.SalesOrderHeader
WHERE 
    YEAR(OrderDate) = 2011 
    AND
    MONTH(OrderDate) = 5
;
