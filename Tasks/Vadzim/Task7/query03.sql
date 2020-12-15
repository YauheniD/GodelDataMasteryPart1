--Query 3
SELECT * INTO tempdb.dbo.OrderHeader FROM AdventureWorks2019.Sales.SalesOrderHeader
WHERE YEAR(OrderDate) BETWEEN 2011 AND 2012 
;
