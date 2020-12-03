--Query 1
SELECT
	COUNT(BusinessEntityID) AS Number_of_people
FROM HumanResources.Employee
WHERE 
	MaritalStatus = 'M'
	AND
	BusinessEntityID IN (SELECT BusinessEntityID FROM Sales.SalesPerson)
