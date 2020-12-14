--TASK 1
SELECT SOH.CustomerID,
       MAX(SOH.OrderDate) Max_Order_Date
FROM Sales.SalesOrderHeader SOH
GROUP BY SOH.CustomerID
ORDER BY SOH.CustomerID
;
