--Query 9
SELECT 
    CustomerID,
    YEAR,
    COUNT,
    SUM(COUNT) OVER (PARTITION BY CustomerID ORDER BY YEAR) AS runqty
FROM vCustOrders 
ORDER BY CustomerID
;
