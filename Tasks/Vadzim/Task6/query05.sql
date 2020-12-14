--Query 5
SELECT 
    empid,
    [2007] as cnt2007,
    [2008] as cnt2008,
    [2009] as cnt2009
FROM (SELECT o.empid,YEAR(o.orderdate) AS Y, o.qty FROM tempdb.dbo.Orders AS o) as u
pivot
(
    SUM(qty)
    FOR Y
    IN ([2007],[2008],[2009])
    
) AS task5
;
