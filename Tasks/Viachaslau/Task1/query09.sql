SELECT SalesOrderID,
       PurchaseOrderNumber,
       OnlineOrderFlag
FROM Sales.SalesOrderHeader
WHERE ((
       PurchaseOrderNumber LIKE 'PO1%9'
        AND OnlineOrderFlag = 0)
              OR (OnlineOrderFlag = 1))
        AND OrderDate = '05/31/2011'
;
