--Task 1
SELECT
    empid,
    SUM
    (  
        CASE custid
            WHEN 'A'
                THEN qty
                ELSE NULL
            END
    ) AS A,
    SUM
    (
        CASE custid
            WHEN 'B'
                THEN qty
                ELSE NULL
            END
    ) AS B,
    SUM
    (
        CASE custid
            WHEN 'C'
                THEN qty
                ELSE NULL
            END
    ) AS C,
    SUM
    (
        CASE custid
            WHEN 'D'
                THEN qty
                ELSE NULL
            END
    ) AS D
FROM dbo.Orders
GROUP BY empid
;
