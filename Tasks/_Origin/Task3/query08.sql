SELECT a.CustID AS CustomerID,
       a.oDate AS OrderMonth,
       a.SumQuantity AS Qty,
	  SUM(a.SumQuantity) OVER (PARTITION BY a.CustID ORDER BY a.oDate, a.SumQuantity ROWS UNBOUNDED PRECEDING) AS RunQty
FROM
(
    SELECT c.CustomerID AS CustID,
           MONTH(OrderDate) AS oDate,
           SUM(OrderQty) AS SumQuantity
    FROM Sales.SalesOrderHeader AS sh
	JOIN Sales.SalesOrderDetail AS sd ON sh.SalesOrderID = sd.SalesOrderID
	JOIN Sales.Customer AS c ON c.CustomerID = sh.CustomerID
	JOIN Person.Person AS p ON p.BusinessEntityID = c.PersonID
	WHERE LastName = 'Adams'
    GROUP BY c.CustomerID,
             MONTH(OrderDate)	
) a
;
