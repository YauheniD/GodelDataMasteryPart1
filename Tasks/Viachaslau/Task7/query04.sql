DELETE
FROM tempdb.dbo.Orders
OUTPUT DELETED.SalesOrderID,
       DELETED.OrderDate
WHERE OrderDate < '08/01/2011'
;
