--Query 9
SELECT 
    SalesOrderID,
    PurchaseOrderNumber,
    OnlineOrderFlag
FROM Sales.SalesOrderHeader
WHERE
    ((PurchaseOrderNumber LIKE 'PO1%9' 
    AND
    OnlineOrderFlag = 'False') 
    OR
    OnlineOrderFlag = 'True') 
    AND
    OrderDate = '2011-05-31'
;
