--Query 2
SELECT
    SOH.CustomerID,
    SOH.SalesOrderID,
	SOH.OrderDate
FROM AdventureWorks2019.Sales.SalesOrderHeader SOH
JOIN 
    (
    SELECT 
        SOH2.CustomerID,
        COUNT(*) AS CNT
    FROM AdventureWorks2019.Sales.SalesOrderHeader SOH2
    GROUP BY SOH2.CustomerID
    ) RES
    ON RES.CustomerID = SOH.CustomerID
WHERE RES.CNT =
    (
    SELECT TOP 1 COUNT(*) AS CNT2 
    FROM AdventureWorks2019.Sales.SalesOrderHeader SOH3
    GROUP BY SOH3.CustomerID
    ORDER BY CNT2 DESC
	)
;
