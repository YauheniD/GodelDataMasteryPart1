--Query 10
SET LANGUAGE us_english
SELECT SalesOrderID,
		OrderDate,
		DATENAME(weekday ,OrderDate) AS Day
FROM Sales.SalesOrderHeader
WHERE
    YEAR(OrderDate) = 2011
    AND
    MONTH(OrderDate) = 8
    AND
    DATEPART(weekday,OrderDate) IN (1, 7)
;
