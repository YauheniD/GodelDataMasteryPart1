SELECT OH.CustomerID,
       OH.SalesOrderID,
       OH.OrderDate
FROM Sales.SalesOrderHeader AS OH
INNER JOIN (
       SELECT CustomerID
       FROM Sales.SalesOrderHeader
       GROUP BY CustomerID
       HAVING COUNT(RevisionNumber) = (
                     SELECT MAX(T2.B) AS A
                     FROM (
                            SELECT CustomerID,
                                   COUNT(SalesOrderID) AS B
                            FROM Sales.SalesOrderHeader
                            GROUP BY CustomerID) AS T2)
       ) AS T1
       ON T1.CustomerID = OH.CustomerID
;
