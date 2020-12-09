WITH C
AS (
       SELECT DISTINCT ROW_NUMBER() OVER (
                     ORDER BY YEAR(OrderDate)
                     ) AS rn,
              YEAR(OrderDate) AS OrderYear,
              COUNT(CustomerID) AS CurNumCusts
       FROM Sales.SalesOrderHeader
       GROUP BY YEAR(OrderDate)
       )
SELECT DISTINCT curr.OrderYear,
       curr.CurNumCusts,
       ISNULL(prev.CurNumCusts, 0) AS PrvNumCusts,
       ISNULL(curr.CurNumCusts - prev.CurNumCusts, 0) AS growth
FROM C AS curr
LEFT JOIN C AS prev
       ON curr.rn = prev.rn + 1
ORDER BY curr.OrderYear
;
