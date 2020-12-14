--Query 5
SELECT	
	E.JobTitle,
	AVG(EPH.Rate) AS AverageRate,
	COUNT(*) AS Employees_Count
FROM HumanResources.Employee E
JOIN HumanResources.EmployeePayHistory EPH
    ON E.BusinessEntityID = EPH.BusinessEntityID
WHERE EPH.ModifiedDate = 
	(
		SELECT MAX(ModifiedDate)
		FROM HumanResources.EmployeePayHistory EPH2
		WHERE EPH2.BusinessEntityID = EPH.BusinessEntityID
	)
GROUP BY E.JobTitle
ORDER BY AVG(EPH.Rate)
;
