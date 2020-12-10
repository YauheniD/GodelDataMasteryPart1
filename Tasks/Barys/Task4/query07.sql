--Task 7
WITH YearsCustomers_CTE
(
    OrderYear,
    NumberOFCustomers
) AS
(	
    SELECT 
        YEARS AS OrderYear,
        COUNT(*) AS NumberOFCustomers
    FROM
    (
        SELECT DISTINCT 
            YEAR(SOH.OrderDate) AS YEARS,
            SOH.CustomerID AS CID
        FROM Sales.SalesOrderHeader SOH
    ) Orders
    GROUP BY YEARS
)
SELECT 
    OrderYear,
    NumberOFCustomers AS CurNumCusts,
    LAG(NumberOFCustomers) OVER (ORDER BY OrderYear) AS PrvNumCusts,
    NumberOFCustomers - LAG(NumberOFCustomers) OVER (ORDER BY OrderYear) AS growth
FROM YearsCustomers_CTE 
ORDER BY OrderYear
;
