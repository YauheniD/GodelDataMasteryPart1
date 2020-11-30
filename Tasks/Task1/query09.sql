--Task 9
SELECT [SalesOrderID],
       [PurchaseOrderNumber],
       [OnlineOrderFlag]
FROM [Sales].[SalesOrderHeader]
WHERE [OrderDate] = '2011-05-31'
AND 
(
	([PurchaseOrderNumber] LIKE 'PO1%9' AND [OnlineOrderFlag] = 0)
	OR [OnlineOrderFlag] = 1
)
;
