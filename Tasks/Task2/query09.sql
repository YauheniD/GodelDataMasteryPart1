SELECT Purchasing.Vendor.Name AS VendorName,
       Product.Name AS ProductName
FROM Purchasing.Vendor
LEFT JOIN Purchasing.ProductVendor
       ON Purchasing.Vendor.BusinessEntityID = Purchasing.ProductVendor.BusinessEntityID
LEFT JOIN Production.Product
       ON Production.Product.ProductID = Purchasing.ProductVendor.ProductID
ORDER BY VendorName,
       ProductName
;
