--Query  2
SELECT empid,
       A,
       B,
       C,
       D
FROM (
    SELECT empid, custid, qty
    FROM dbo.Orders
    )  In_Ts
PIVOT(
    SUM(qty) FOR custid IN(A, B, C, D)
    )  P
;
