--Query 4
SELECT
    empid,
    custid,
    qty
FROM 
    (SELECT empid, A, B, C, D FROM tempdb.dbo.EmpCustOrders) AS p
unpivot
    (qty FOR custid IN (A, B, C, D)) AS unpvt
;
