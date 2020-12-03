--Query 9
SELECT DISTINCT
    pv.Name AS VendorName,
    pp.Name AS ProductName
FROM Purchasing.Vendor AS pv
LEFT JOIN Purchasing.PurchaseOrderHeader AS ppoh 
    ON (pv.BusinessEntityID = ppoh.VendorID)
LEFT JOIN Purchasing.PurchaseOrderDetail AS ppod 
    ON (ppoh.PurchaseOrderID = ppod.PurchaseOrderID)
LEFT JOIN Production.Product AS pp ON (ppod.ProductID = pp.ProductID)
ORDER BY pv.Name 
;
