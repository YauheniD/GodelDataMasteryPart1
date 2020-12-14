SELECT P.empid,
       SUM(CASE 
                     WHEN PM.custid = 'A'
                            THEN PM.qty
                     END) AS A,
       SUM(CASE 
                     WHEN PM.custid = 'B'
                            THEN PM.qty
                     END) AS B,
       SUM(CASE 
                     WHEN PM.custid = 'C'
                            THEN PM.qty
                     END) AS C
FROM tempdb.dbo.Orders AS P
INNER JOIN tempdb.dbo.Orders AS PM
       ON PM.empid = P.empid
GROUP BY P.empid
;
