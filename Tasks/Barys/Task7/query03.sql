--Query 3
USE tempdb;
SELECT * INTO dbo.Orders
FROM AdventureWorks2019.Sales.SalesOrderHeader SOH
WHERE YEAR(SOH.OrderDate) IN (2011,2012)
;
