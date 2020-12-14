--Query 5
SELECT 
    VendorID,
    OrderDate,
    PurchaseOrderID
FROM Purchasing.PurchaseOrderHeader AS M
WHERE OrderDate IN (SELECT MAX(OrderDate) FROM Purchasing.PurchaseOrderHeader 
    WHERE VendorID = M.VendorID 
    GROUP BY VendorID)
;
