--Query 6
SELECT DISTINCT
    SOH.CustomerID,
    SOH.OrderDate
FROM Sales.SalesOrderHeader SOH
WHERE 
    YEAR(SOH.OrderDate) = 2011
    AND
    NOT EXISTS
    (
    SELECT
        SOH2.CustomerID,
        SOH2.OrderDate
    FROM Sales.SalesOrderHeader SOH2
    WHERE 
        YEAR(SOH2.OrderDate) != 2011
        AND 
        SOH.CustomerID = SOH2.CustomerID
	)
;
