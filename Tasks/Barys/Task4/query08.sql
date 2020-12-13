--Task 8
CREATE VIEW Sales.vCustOrders 
AS
WITH SOH_SOD_CTE
(
    CustomerID,
    OrderYear,
    OrderQty
) AS
(	
	SELECT 
        SOH.CustomerID,
        YEAR(SOH.OrderDate) AS OrderYear,
        SOD.OrderQty
    FROM Sales.SalesOrderHeader SOH 
    JOIN Sales.SalesOrderDetail SOD
        ON SOH.SalesOrderID = SOD.SalesOrderID
) 
SELECT DISTINCT
    SSC1.CustomerID,
    SSC1.OrderYear,
	(
        SELECT SUM(SSC2.OrderQty)
        FROM SOH_SOD_CTE as SSC2
        WHERE 
            SSC1.CustomerID = SSC2.CustomerID
            AND
            SSC1.OrderYear = SSC2.OrderYear
    ) OrderQty
FROM SOH_SOD_CTE SSC1
;
