--Task 6
WITH Orders_CTE 
(
    YEARS,
    CID
) AS
( 
    SELECT DISTINCT 
        YEAR(SOH.OrderDate) AS YEARS,
        SOH.CustomerID AS CID
    FROM Sales.SalesOrderHeader SOH
)
SELECT 
    YEARS AS OrderYear,
    COUNT(*) AS NumberOFCustomers
FROM Orders_CTE
GROUP BY YEARS
HAVING COUNT(*) > 10000
;
