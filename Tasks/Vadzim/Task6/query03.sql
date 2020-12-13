--Query 3
SELECT
    tdeco.empid,
    'A' AS custid,
    tdeco.A AS qty
FROM tempdb.dbo.EmpCustOrders AS tdeco
WHERE tdeco.A IS NOT NULL
UNION 
SELECT
    tdeco.empid,
    'B' AS custid,
    tdeco.B AS qty
FROM tempdb.dbo.EmpCustOrders AS tdeco
WHERE tdeco.B IS NOT NULL
UNION 
SELECT
    tdeco.empid,
    'C' AS custid,
    tdeco.C AS qty
FROM tempdb.dbo.EmpCustOrders AS tdeco
WHERE tdeco.C IS NOT NULL
UNION 
SELECT
    tdeco.empid,
    'D' AS custid,
    tdeco.D AS qty
FROM tempdb.dbo.EmpCustOrders AS tdeco
WHERE tdeco.D IS NOT NULL
ORDER BY tdeco.empid
;
