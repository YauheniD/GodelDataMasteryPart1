USE tempdb;

IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL
       DROP TABLE dbo.Orders;

SELECT *
INTO dbo.Orders
FROM AdventureWorks2019.Sales.SalesOrderHeader AS OH
WHERE YEAR(OH.OrderDate) IN (2011, 2012)

SELECT *
FROM tempdb.dbo.Orders
;
