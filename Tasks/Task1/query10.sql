--Query 10
SELECT 
	SalesOrderID,
	OrderDate,
	FORMAT(OrderDate, 'dddd') AS DayOfWeekName
FROM Sales.SalesOrderHeader
WHERE 
	FORMAT(OrderDate, 'dddd') IN ('Saturday', 'Sunday')
	AND year(orderdate) = 2011
	AND month(orderdate) = 8
;
