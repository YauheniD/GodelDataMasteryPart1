--Task 4
SELECT 
    empid,
    custid,
    qty
FROM dbo.EmpCustOrders
UNPIVOT
    (
        custid 
        FOR qty 
        IN([A], [B], [C], [D])
    )  P
;
