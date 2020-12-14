--Query 4
SELECT 
	S.Name AS ShiftName,
	(
		SELECT COUNT(*)
		FROM HumanResources.Employee
	) AS OveralEmployee,
	COUNT(*) AS EmployeesByShift,
	(COUNT(*) * 100.0)/
	(	
		SELECT COUNT(*)
		FROM HumanResources.Employee
	) AS EmployeesByShiftPercentage
FROM HumanResources.Employee E
JOIN HumanResources.EmployeeDepartmentHistory EDH
    ON E.BusinessEntityID = EDH.BusinessEntityID
JOIN HumanResources.Shift S
	ON S.ShiftID = EDH.ShiftID
WHERE EDH.EndDate IS NULL
GROUP BY S.Name
ORDER BY EmployeesByShiftPercentage DESC
;
