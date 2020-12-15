--Query 1
USE tempdb;

IF OBJECT_ID('dbo.Customers', 'U') IS NOT NULL DROP TABLE dbo.Customers;

CREATE TABLE dbo.Customers
(
  CustomerID  INT          NOT NULL PRIMARY KEY,
  PersonID    INT          NULL,
  FirstName   NVARCHAR(50) NULL,
  LastName    NVARCHAR(50) NULL,
  StoreName   NVARCHAR(50) NULL,
  CountryRegionCode NVARCHAR(3) NULL
);

INSERT INTO tempdb.dbo.Customers(CustomerID, PersonID, FirstName, LastName, StoreName, CountryRegionCode)
    VALUES(999999, 999999, 'John', 'Smith', NULL, 'US')
;

SELECT * FROM tempdb.dbo.Customers
;
