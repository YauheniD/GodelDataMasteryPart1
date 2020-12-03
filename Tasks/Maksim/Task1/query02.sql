--Query 2
SELECT SalesOrderID,
       OrderDate,
       TotalDue
FROM Sales.SalesOrderHeader
WHERE 
    EOMONTH(OrderDate) = OrderDate
    AND 
    TotalDue < 1000
    AND 
    YEAR(OrderDate) = 2011
;
