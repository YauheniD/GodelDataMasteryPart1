--Query 1
SELECT
    o.empid,
    SUM(CASE o.custid
        WHEN 'A'
            THEN o.qty
        END
    ) AS A,
    SUM(CASE o.custid
        WHEN 'B'
            THEN o.qty
        END
    ) AS B,
    SUM(CASE o.custid
        WHEN 'C'
            THEN o.qty
        END
    ) AS C,
    SUM(CASE o.custid
        WHEN 'D'
            THEN o.qty
        END
    ) AS D
FROM tempdb.dbo.Orders AS o
GROUP BY o.empid
;
