--Query 2
WITH CTE (CustomerID)
AS
(
	SELECT 
		rc.CustomerID
	FROM (SELECT CustomerID, COUNT(SalesOrderID) AS cnt
		FROM Sales.SalesOrderHeader 
		GROUP BY CustomerID) rc 
	JOIN(SELECT MAX(cnt) AS maxcnt
		FROM (SELECT CustomerID, COUNT(SalesOrderID) AS cnt
            FROM Sales.SalesOrderHeader
            GROUP BY CustomerID
           ) rc
     ) m
     ON rc.cnt = m.maxcnt
)
SELECT
	ssoh.CustomerID,
	ssoh.SalesOrderID,
	ssoh.OrderDate
FROM Sales.SalesOrderHeader AS ssoh
JOIN CTE AS c ON (ssoh.CustomerID = c.CustomerID)
;
