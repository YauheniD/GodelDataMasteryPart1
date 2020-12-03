SELECT V.Name AS VendorName,
       P.Name AS ProductName
FROM Purchasing.Vendor AS V
LEFT JOIN Purchasing.ProductVendor AS PV
       ON V.BusinessEntityID = PV.BusinessEntityID
LEFT JOIN Production.Product AS P
       ON P.ProductID = PV.ProductID
ORDER BY VendorName,
       ProductName
;

