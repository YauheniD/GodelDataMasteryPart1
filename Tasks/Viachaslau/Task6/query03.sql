SELECT empid,
       'A' AS custid,
       A AS qty
FROM tempdb.dbo.EmpCustOrders
WHERE A > 0

UNION ALL

SELECT empid,
       'B' AS custid,
       B AS qty
FROM tempdb.dbo.EmpCustOrders
WHERE B > 0

UNION ALL

SELECT empid,
       'C' AS custid,
       C AS qty
FROM tempdb.dbo.EmpCustOrders
WHERE C > 0

UNION ALL

SELECT empid,
       'D' AS custid,
       D AS qty
FROM tempdb.dbo.EmpCustOrders
WHERE D > 0
ORDER BY empid,
       custid
;
