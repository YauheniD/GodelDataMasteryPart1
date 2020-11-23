SELECT CustomerID,OrderDate,
		SalesOrderID,CreditCardID,
ROW_NUMBER() OVER(PARTITION BY CustomerID ORDER BY CustomerID,SalesOrderID) AS rownum
FROM Sales.SalesOrderHeader
WHERE CreditCardID IS NOT NULL;