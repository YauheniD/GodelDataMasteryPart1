SELECT DISTINCT T1.CustomerID, T1.Name
FROM (SELECT CustomerID, Name
              FROM Sales.SalesOrderDetail AS OD
			  LEFT JOIN Sales.SalesOrderHeader
              ON OD.SalesOrderID = Sales.SalesOrderHeader.SalesOrderID
			  LEFT JOIN Production.Product AS PP
			  ON PP.ProductID = OD.ProductID
			  WHERE Name = 'Mountain-300 Black, 48'
			  ) AS T1
;
