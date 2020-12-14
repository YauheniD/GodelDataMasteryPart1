--Query  5
SELECT empid,
	   [2007] AS cnt2007,
	   [2008] AS cnt2008,
	   [2009] AS cnt2009
FROM (SELECT empid,
			 YEAR(orderdate) OrderYear
	  FROM dbo.Orders
	  ) D
PIVOT(
		COUNT(OrderYear) FOR OrderYear IN([2007], [2008], [2009])
	  ) P
;
