--Query 9
SELECT SalesOrderID,
	   PurchaseOrderNumber,
	   OnlineOrderFlag
FROM Sales.SalesOrderHeader
WHERE 
	OrderDate=CONVERT(DATETIME, '20110531', 101) 
	AND
	(OnlineOrderFlag = 1 OR (SUBSTRING(PurchaseOrderNumber,1,3) = 'PO1' 
	AND
	SUBSTRING(PurchaseOrderNumber,LEN(PurchaseOrderNumber),1) = '9'
	AND
	OnlineOrderFlag = 0))
ORDER BY PurchaseOrderNumber DESC
;
