--Task 2
SELECT 
    SOH.SalesOrderID,
    SOH.CustomerID,
    SOH.OrderDate,
    SOH.SalesPersonID
FROM Sales.SalesOrderHeader SOH
JOIN 
    (
        SELECT 
            CustomerID,
	        MAX(OrderDate) AS MaxOrderDate
        FROM Sales.SalesOrderHeader
        GROUP BY CustomerID
    ) SOH_MAX
    ON SOH_MAX.CustomerID = SOH.CustomerID
    WHERE SOH.OrderDate =  SOH_MAX.MaxOrderDate
;
