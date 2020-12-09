SELECT OH.SalesOrderID,
       OH.CustomerID,
       T1.OrderDate,
       OH.SalesPersonID
FROM Sales.SalesOrderHeader AS OH
INNER JOIN (
       SELECT CustomerID,
              MAX(OrderDate) AS 'OrderDate'
       FROM Sales.SalesOrderHeader
       GROUP BY CustomerID
       ) AS T1
       ON T1.CustomerID = OH.CustomerID
ORDER BY CustomerID
;
