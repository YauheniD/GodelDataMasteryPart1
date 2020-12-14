SELECT empid,
       [2007] AS cnt2007,
       [2008] AS cnt2008,
       [2009] AS cnt2009
FROM (
       SELECT empid,
              orderid,
              YEAR(orderdate) AS od
       FROM tempdb.dbo.Orders) AS T1
PIVOT(COUNT(T1.orderid) 
      FOR T1.od IN (
                   [2007],
                   [2008],
                   [2009]
                  )) AS PV
;
