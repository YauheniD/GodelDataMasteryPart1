USE tempdb

IF OBJECT_ID('dbo.Customers', 'U') IS NOT NULL
       DROP TABLE dbo.Customers

CREATE TABLE dbo.Customers (
       CustomerID INT NOT NULL PRIMARY KEY,
       PersonID INT NULL,
       FirstName NVARCHAR(50) NULL,
       LastName NVARCHAR(50) NULL,
       StoreName NVARCHAR(50) NULL,
       CountryRegionCode NVARCHAR(3) NULL
       );

INSERT INTO dbo.Customers
VALUES (999999,999999,'John','Smith',NULL,'US')

INSERT INTO tempdb.dbo.Customers (
       CustomerID,
       StoreName,
       CountryRegionCode)
SELECT DISTINCT ADV2019_C.CustomerID,
       ADV2019_S.Name,
       ADV2019_SP.CountryRegionCode
FROM AdventureWorks2019.Sales.Customer AS ADV2019_C
INNER JOIN AdventureWorks2019.Sales.SalesOrderHeader AS ADV2019_OH
       ON ADV2019_OH.CustomerID = ADV2019_C.CustomerID
INNER JOIN AdventureWorks2019.Person.Address AS ADV2019_A
       ON ADV2019_A.AddressID = ADV2019_OH.ShipToAddressID
INNER JOIN AdventureWorks2019.Person.StateProvince AS ADV2019_SP
       ON ADV2019_SP.StateProvinceID = ADV2019_A.StateProvinceID
INNER JOIN AdventureWorks2019.Person.CountryRegion AS ADV2019_CR
       ON ADV2019_CR.CountryRegionCode = ADV2019_SP.CountryRegionCode
LEFT JOIN AdventureWorks2019.Sales.Store AS ADV2019_S
       ON ADV2019_S.BusinessEntityID = ADV2019_C.StoreID
WHERE ADV2019_OH.SalesOrderID IS NOT NULL

SELECT *
FROM tempdb.dbo.Customers
;
