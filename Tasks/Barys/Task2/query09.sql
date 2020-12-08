--Query 9
SELECT 
    V.Name as VendorName,
    P.Name as ProductName
FROM Production.Product P
JOIN Purchasing.ProductVendor PV 
    ON PV.ProductID=P.ProductID
RIGHT JOIN Purchasing.Vendor V 
    ON V.BusinessEntityID=PV.BusinessEntityID
ORDER BY VendorName, ProductName
