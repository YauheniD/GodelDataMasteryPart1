--Query 3
SELECT SalesOrderID,
       OrderDate,
       CustomerID,
       ROW_NUMBER() OVER (ORDER BY OrderDate, SalesOrderID) rownum
FROM Sales.SalesOrderHeader SOH
;
