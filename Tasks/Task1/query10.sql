--Query 10
SELECT 
    SalesOrderID,
    OrderDate,
    DATENAME(weekday,OrderDate) AS DayOfTheWeek
FROM Sales.SalesOrderHeader
WHERE 
    DATENAME(weekday,OrderDate) IN ('Saturday', 'Sunday') 
    AND
    YEAR(OrderDate) = 2011 
    AND
    MONTH(OrderDate) = 8
;
