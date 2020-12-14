SELECT CustomerID,
       T1.OrderDate
FROM (
       SELECT CustomerID,
              MAX(YEAR(OrderDate)) OVER (PARTITION BY CustomerID) AS MAXYEAR,
              OrderDate
       FROM Sales.SalesOrderHeader) AS T1
WHERE T1.MAXYEAR = 2011
;
