--Query 4
SELECT DISTINCT PSP.NAME
FROM AdventureWorks2019.Person.BusinessEntityAddress PBEA 
JOIN AdventureWorks2019.Person.Address PA 
    ON PBEA.AddressID = PA.AddressID
JOIN AdventureWorks2019.Person.StateProvince PSP 
    ON PA.StateProvinceID = PSP.StateProvinceID
JOIN AdventureWorks2019.Purchasing.Vendor PV
    ON PBEA.BusinessEntityID = PV.BusinessEntityID
EXCEPT
SELECT DISTINCT
    PSP.NAME
FROM AdventureWorks2019.Person.BusinessEntityAddress PBEA 
JOIN AdventureWorks2019.Person.Address PA 
    ON PBEA.AddressID = PA.AddressID
JOIN AdventureWorks2019.Person.StateProvince PSP 
    ON PA.StateProvinceID = PSP.StateProvinceID
JOIN AdventureWorks2019.Sales.Customer SC
    ON SC.PersonID=PBEA.BusinessEntityID
;
