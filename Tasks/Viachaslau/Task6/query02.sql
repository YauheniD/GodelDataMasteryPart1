SELECT empid,
       A,
       B,
       C,
       D
FROM (
       SELECT empid,
              qty,
              custid
       FROM tempdb.dbo.Orders
       ) AS T1
PIVOT(SUM(qty) FOR custid IN (A,B,C,D)) AS PivotTable
;
