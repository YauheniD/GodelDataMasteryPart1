--Query 2
SELECT 
    SalesOrderID,
    OrderDate,
    TotalDue
FROM Sales.SalesOrderHeader
WHERE 
    YEAR(OrderDate) = 2011
    AND
    OrderDate = EOMONTH(OrderDate) 
    AND
    TotalDue < 1000
;
