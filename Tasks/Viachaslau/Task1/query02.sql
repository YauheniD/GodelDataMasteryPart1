SELECT SalesOrderID,
       OrderDate,
       TotalDue
FROM Sales.SalesOrderHeader
WHERE OrderDate = EOMONTH(OrderDate)
       AND YEAR(OrderDate) = 2011
       AND TotalDue < 1000
;
