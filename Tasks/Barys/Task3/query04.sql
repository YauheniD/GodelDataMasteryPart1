--Query 4
SELECT DISTINCT PSP.NAME
FROM Person.BusinessEntityAddress PBEA 
JOIN Person.Address PA 
    ON PBEA.AddressID = PA.AddressID
JOIN Person.StateProvince PSP 
    ON PA.StateProvinceID = PSP.StateProvinceID
JOIN Purchasing.Vendor PV
    ON PBEA.BusinessEntityID = PV.BusinessEntityID
EXCEPT
SELECT DISTINCT
    PSP.NAME
FROM Person.BusinessEntityAddress PBEA 
JOIN Person.Address PA 
    ON PBEA.AddressID = PA.AddressID
JOIN Person.StateProvince PSP 
    ON PA.StateProvinceID = PSP.StateProvinceID
JOIN Sales.Customer SC
    ON SC.PersonID=PBEA.BusinessEntityID
;
