--TASK  1
SELECT empid,
       SUM(CASE
                WHEN custid = 'A' THEN qty
           END)  A,
       SUM(CASE
                WHEN custid = 'B' THEN qty
           END)  B,
       SUM(CASE
                WHEN custid = 'C' THEN qty
           END)  C,
       SUM(CASE
                WHEN custid = 'D' THEN qty
           END)  D
FROM dbo.Orders
GROUP BY empid
;
