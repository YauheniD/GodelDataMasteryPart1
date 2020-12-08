--Query 2
SELECT
    CustomerID,
    SalesOrderID,
    OrderDate
FROM Sales.SalesOrderHeader
WHERE CustomerID in
(SELECT rc.CustomerID
FROM (SELECT CustomerID, COUNT(SalesOrderID) AS cnt
      FROM Sales.SalesOrderHeader 
      GROUP BY CustomerID
     ) rc JOIN
     (SELECT MAX(cnt) AS maxcnt
      FROM (SELECT CustomerID, COUNT(SalesOrderID) AS cnt
            FROM Sales.SalesOrderHeader
            GROUP BY CustomerID
           ) rc
     ) m
     ON rc.cnt = m.maxcnt)
;
