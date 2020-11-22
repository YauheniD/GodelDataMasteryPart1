--Query 6
SELECT DISTINCT 
	CustomerID,
	OrderDate,
	SalesOrderID,
	CreditCardID,
	ROW_NUMBER() OVER(ORDER BY OrderDate, SalesOrderID) AS rownum
FROM Sales.SalesOrderHeader
;
