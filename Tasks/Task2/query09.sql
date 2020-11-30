--Query 9
SELECT 
    V.Name as VendorName,
    P.Name as ProductName
FROM AdventureWorks2019.Production.Product P
JOIN AdventureWorks2019.Purchasing.ProductVendor PV 
    ON PV.ProductID=P.ProductID
RIGHT JOIN AdventureWorks2019.Purchasing.Vendor V 
    ON V.BusinessEntityID=PV.BusinessEntityID
ORDER BY VendorName, ProductName
