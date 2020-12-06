--Query 8
SELECT
    SSOH.CustomerID,
    PP.FirstName + ' ' + MiddleName + ' ' + PP.LastName AS CustomerFullName,
    PR.Name
FROM AdventureWorks2019.Sales.Customer SC
JOIN AdventureWorks2019.Sales.SalesOrderHeader SSOH 
    ON SC.CustomerID=SSOH.CustomerID
JOIN AdventureWorks2019.Sales.SalesOrderDetail SSOD 
    ON SSOD.SalesOrderID=SSOH.SalesOrderID
JOIN AdventureWorks2019.Production.Product PR 
    ON PR.ProductID=SSOD.ProductID
RIGHT JOIN AdventureWorks2019.Person.Person PP 
    ON PP.BusinessEntityID=SC.PersonID
JOIN AdventureWorks2019.Person.BusinessEntityAddress PBEA 
    ON PBEA.BusinessEntityID = PP.BusinessEntityID
JOIN AdventureWorks2019.Person.Address PA 
    ON PBEA.AddressID = PA.AddressID
JOIN AdventureWorks2019.Person.StateProvince PSP 
    ON PA.StateProvinceID = PSP.StateProvinceID
JOIN AdventureWorks2019.Person.CountryRegion AS PCR 
    ON pcr.CountryRegionCode = PSP.CountryRegionCode
WHERE 
    PP.MiddleName = 'R'
    AND
    PCR.Name = 'France'
ORDER BY SSOH.CustomerID, PR.Name
;
