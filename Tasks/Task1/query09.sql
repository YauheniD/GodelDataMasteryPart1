--Query 9
SELECT
	SalesOrderID,
	PurchaseOrderNumber,
	OnlineOrderFlag
FROM Sales.SalesOrderHeader
WHERE 
	((LEFT(PurchaseOrderNumber, 3) = 'PO1' 
	AND 
	RIGHT(PurchaseOrderNumber, 1) = '9' 
	AND
	OnlineOrderFlag = 0)
	OR 
	OnlineOrderFlag = 1) 
	AND 
	DAY(OrderDate) = 31 
	AND 
	MONTH(OrderDate) = 05
	AND
	YEAR(OrderDate) = 2011
ORDER BY OrderDate
;
