--Query  9
SELECT v.Name as VendorName,
       p.Name as ProductName
FROM Purchasing.Vendor as v
LEFT JOIN Purchasing.ProductVendor as pv 
       ON v.BusinessEntityID = pv.BusinessEntityID
LEFT JOIN Production.Product as p 
       ON pv.ProductID = p.ProductID
ORDER BY 1, 2
;

