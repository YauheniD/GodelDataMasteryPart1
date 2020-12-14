--Query 4
SELECT DISTINCT 
    psp.NAME
FROM Person.BusinessEntityAddress AS pbea 
JOIN Person.Address AS pa 
    ON pbea.AddressID = pa.AddressID
JOIN Person.StateProvince AS psp 
    ON pa.StateProvinceID = psp.StateProvinceID
JOIN Purchasing.Vendor AS pv
    ON pbea.BusinessEntityID = pv.BusinessEntityID
EXCEPT
SELECT DISTINCT
    psp.NAME
FROM Person.BusinessEntityAddress AS pbea 
JOIN Person.Address AS pa 
    ON pbea.AddressID = pa.AddressID
JOIN Person.StateProvince AS psp 
    ON pa.StateProvinceID = psp.StateProvinceID
JOIN Sales.Customer AS sc
    ON sc.PersonID=pbea.BusinessEntityID
;
