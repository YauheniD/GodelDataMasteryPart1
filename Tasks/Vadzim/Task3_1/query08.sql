--Query 8
SELECT DISTINCT
    YEAR(OrderDate) AS Year,
    MONTH(OrderDate) AS Month,
    SUM(TotalDue) OVER(PARTITION BY MONTH(OrderDate), YEAR(OrderDate)) AS MonthlyRevenue,
    SUM(TotalDue) OVER(PARTITION BY YEAR(OrderDate) ORDER BY MONTH(OrderDate)) AS RunningRevenueTotal
FROM Sales.SalesOrderHeader
ORDER BY Year, Month
;
