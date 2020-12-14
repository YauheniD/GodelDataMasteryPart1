--Query 3
SELECT
	P.FirstName + ' ' + COALESCE(P.MiddleName + ' ', '') + P.LastName as EmployeeFullName,
	E.LoginID,
	E.JobTitle,
	D.Name AS DepartmentName
FROM HumanResources.Employee E
JOIN HumanResources.EmployeeDepartmentHistory EDH
    ON E.BusinessEntityID = EDH.BusinessEntityID
JOIN HumanResources.Department D
    ON EDH.DepartmentID = D.DepartmentID
JOIN Person.Person P
	ON P.BusinessEntityID = E.BusinessEntityID
WHERE 
    D.Name = 'Engineering'
	AND
	YEAR(EDH.StartDate) <= 2008
	AND
	(
	YEAR(EDH.EndDate) >= 2008
	OR
	YEAR(EDH.EndDate) IS NULL
	)
;
