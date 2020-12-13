--Task 2
SELECT 
    empid,
    [A],
    [B],
    [C],
    [D]
FROM 
    (
        SELECT 
            empid,
            custid,
            qty
        FROM dbo.Orders
    ) TMP
PIVOT
    (
        SUM(qty) 
        FOR custid 
        IN([A], [B], [C], [D])
    )  P
;
