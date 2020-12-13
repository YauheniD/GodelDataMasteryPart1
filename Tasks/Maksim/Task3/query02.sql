--Query  2
SELECT SOH.CustomerID,
       SOH.SalesOrderID,
       SOH.OrderDate
FROM Sales.SalesOrderHeader SOH
WHERE EXISTS(
              SELECT SOH2.CustomerID,
                     COUNT(SOH2.CustomerID)
              FROM Sales.SalesOrderHeader SOH2
              WHERE SOH2.CustomerID = SOH.CustomerID
              GROUP BY SOH2.CustomerID
              HAVING COUNT(SOH2.CustomerID) = (
                                                SELECT MAX(INNER_TABLE.count)
                                                FROM (
                                                        SELECT COUNT(SOH3.CustomerID) count
                                                        FROM Sales.SalesOrderHeader SOH3
                                                        GROUP BY SOH3.CustomerID) INNER_TABLE))
;
