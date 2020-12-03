--Task#9
SELECT DISTINCT
       [VendorName] = [v].[Name],
       [ProductName] = [p].[Name]
FROM [Purchasing].[Vendor] [v]
     LEFT JOIN [Purchasing].[PurchaseOrderHeader] [poh] ON [poh].[VendorID] = [v].[BusinessEntityID]
     LEFT JOIN [Purchasing].[PurchaseOrderDetail] [pod] ON [pod].[PurchaseOrderID] = [poh].[PurchaseOrderID]
     LEFT JOIN [Production].[Product] [p] ON [p].[ProductID] = [pod].[ProductID]
ORDER BY [VendorName], [ProductName]
;
