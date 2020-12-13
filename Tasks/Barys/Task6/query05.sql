--Task 5
SELECT 
    empid,
    [2007] AS cnt2007,
	[2008] AS cnt2008,
	[2009] AS cnt2009
FROM 
    (
		SELECT 
			empid, 
			YEAR(orderdate) As years
		FROM dbo.Orders
    ) TMP
PIVOT
    (
		COUNT(TMP.qty) 
		FOR TMP.years
		IN([2007], [2008], [2009])
    )  P
;
