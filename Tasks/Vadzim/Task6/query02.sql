--Query 2
SELECT 
    empid,
    A,
    B,
    C,
    D
FROM (SELECT o.empid,o.custid, o.qty FROM tempdb.dbo.Orders AS o) as u
pivot
(
    SUM(qty)
    FOR custid
    IN ([A],[B],[C],[D])
    
) AS task2
;
