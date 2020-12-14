--Task 3
SELECT
    empid,
    'A' custid,
    A AS qty
FROM dbo.EmpCustOrders
WHERE A  IS NOT NULL
UNION ALL
SELECT 
    empid,
    'B' AS custid,
    B AS qty
FROM dbo.EmpCustOrders
WHERE B IS NOT NULL
UNION ALL
SELECT 
    empid,
    'C' AS custid,
    C AS qty
FROM dbo.EmpCustOrders
WHERE C IS NOT NULL
UNION ALL
SELECT 
    empid,
    'D' AS custid,
    D AS qty
FROM dbo.EmpCustOrders
WHERE D IS NOT NULL
ORDER BY empid
;
