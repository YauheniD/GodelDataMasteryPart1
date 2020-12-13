SELECT empid,
       custid,
       qty
FROM tempdb.dbo.EmpCustOrders
UNPIVOT(qty FOR custid IN (A,B,C)) AS unpiv
;
