--Query  8
SELECT DISTINCT
       YEAR(SOH.OrderDate) Year,
       MONTH(SOH.OrderDate) Month,
       SUM(TotalDue) OVER (PARTITION BY MONTH(OrderDate), YEAR(OrderDate)) Monthly_Revenue,
       SUM(TotalDue) OVER (PARTITION BY YEAR(OrderDate) ORDER BY MONTH(OrderDate)) Running_Revenue_Total
FROM Sales.SalesOrderHeader SOH
ORDER BY Year, Month
;
