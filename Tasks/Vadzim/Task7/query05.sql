--Query 5
DELETE oh
OUTPUT DELETED.*
FROM  tempdb.dbo.OrderHeader AS oh
JOIN AdventureWorks2019.Sales.Customer AS c 
    ON (oh.CustomerID = c.CustomerID)
JOIN AdventureWorks2019.Person.Person AS pp 
    ON (pp.BusinessEntityID= c.PersonID)
JOIN AdventureWorks2019.Person.BusinessEntityAddress AS ba 
    ON (ba.BusinessEntityID = pp.BusinessEntityID)
JOIN AdventureWorks2019.Person.Address AS a 
    ON (ba.AddressID = a.AddressID)
JOIN AdventureWorks2019.Person.StateProvince AS sp 
    ON (a.StateProvinceID = sp.StateProvinceID)
JOIN AdventureWorks2019.Person.CountryRegion AS cr 
    ON (cr.CountryRegionCode = sp.CountryRegionCode)
WHERE
    cr.Name = 'France'
;
