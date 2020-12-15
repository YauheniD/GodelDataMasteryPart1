--Query 2
INSERT INTO tempdb.dbo.Customers(CustomerID, PersonID, FirstName, LastName, StoreName, CountryRegionCode)
SELECT DISTINCT
    sc.CustomerID,
    sc.PersonID,
    pp.FirstName,
    pp.LastName,
    ss.Name AS StoreName,
    sst.CountryRegionCode
FROM AdventureWorks2019.Sales.Customer AS sc
LEFT JOIN AdventureWorks2019.Person.Person AS pp 
    ON (pp.BusinessEntityID = sc.PersonID)
LEFT JOIN AdventureWorks2019.Sales.Store AS ss 
    ON (ss.BusinessEntityID = sc.StoreID)
LEFT JOIN AdventureWorks2019.Sales.SalesTerritory AS sst 
    ON (sst.TerritoryID = sc.TerritoryID)
JOIN AdventureWorks2019.Sales.SalesOrderHeader AS ssoh 
    ON (sc.CustomerID = ssoh.CustomerID)
;
