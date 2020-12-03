SELECT SalesOrderID,
       OrderDate,
       DATENAME(WEEKDAY, OrderDate) AS 'Day of week name'
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011
       AND MONTH(OrderDate) = 8
       AND DATENAME(WEEKDAY, OrderDate) IN (
              'Saturday',
              'Sunday'
              )
ORDER BY OrderDate
;
