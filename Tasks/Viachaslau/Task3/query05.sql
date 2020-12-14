SELECT T1.VendorID,
       OrderDate,
       PurchaseOrderID
FROM Purchasing.PurchaseOrderHeader AS T1
INNER JOIN (
       SELECT VendorID,
              MAX(OrderDate) AS OD
       FROM Purchasing.PurchaseOrderHeader
       GROUP BY VendorID) AS T2
       ON T1.VendorID = T2.VendorID
              AND T1.OrderDate = T2.OD
ORDER BY T1.VendorID DESC
;
