--Query 2
INSERT INTO dbo.Customers
(
    CustomerID,
    PersonID,
    FirstName,
    LastName,
    StoreName,
    CountryRegionCode
)
SELECT DISTINCT
    C.CustomerID CustomerID,
    C.PersonID PersonID,
    P.FirstName FirstName,
    P.LastName LastName,
    S.Name StoreName,
    ST.CountryRegionCode CountryRegionCode
FROM AdventureWorks2019.Sales.Customer C
JOIN AdventureWorks2019.Sales.SalesTerritory ST
    ON ST.TerritoryID = C.TerritoryID
JOIN AdventureWorks2019.Sales.Store S
    ON S.BusinessEntityID = C.StoreID
JOIN AdventureWorks2019.Person.Person P
    ON C.PersonID = P.BusinessEntityID
;
