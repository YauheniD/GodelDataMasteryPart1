--Query  5
SELECT POH.VendorID,
       POH.OrderDate,
       POH.PurchaseOrderID
FROM Purchasing.PurchaseOrderHeader POH
WHERE POH.OrderDate = 
                       (SELECT MAX(POH1.OrderDate)
                       FROM Purchasing.PurchaseOrderHeader POH1
                       WHERE POH1.VendorID = POH.VendorID
                       GROUP BY POH1.VendorID)
ORDER BY VendorID DESC
;
