--Query 7
SELECT
	pp.FirstName + ' ' + COALESCE(pp.MiddleName + ' ', '') + pp.LastName as FullName,
	MIN(ssp.CommissionPct) AS MinCommissionPct
FROM Person.Person AS pp
JOIN Sales.SalesPerson AS ssp ON (pp.BusinessEntityID = ssp.BusinessEntityID)
GROUP BY pp.FirstName + ' ' + COALESCE(pp.MiddleName + ' ', '') + pp.LastName
ORDER BY FullName, MinCommissionPct
;
