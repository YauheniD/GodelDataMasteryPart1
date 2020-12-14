--¹ 8.Show the monthly revenue for each month, along with the running total for the year
SELECT DISTINCT
       YEAR(OrderDate) AS OrderYear,
       MONTH(OrderDate) AS OrderMonth,
       SUM(TotalDue) OVER(PARTITION BY YEAR(OrderDate), MONTH(OrderDate) ORDER BY YEAR(OrderDate), MONTH(OrderDate)) AS "Monthly Revenue",
       SUM(TotalDue) OVER(PARTITION BY YEAR(OrderDate) ORDER BY MONTH(OrderDate)) AS "Running Revenue Total"
FROM Sales.SalesOrderHeader 
ORDER BY YEAR(OrderDate),
         MONTH(OrderDate)
;
