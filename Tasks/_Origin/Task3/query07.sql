SELECT DISTINCT
       CustomerID,
       pp.Name
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.SalesOrderDetail AS sod 
  ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product AS pp 
  ON SOD.ProductID = pp.ProductID
WHERE pp.Name IN ('Mountain-300 Black, 48')
;
