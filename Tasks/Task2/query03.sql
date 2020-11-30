SELECT Sales.Customer.CustomerID,
	CASE
	WHEN Person.Person.MiddleName IS NULL AND Person.Person.FirstName IS NOT NULL THEN
				CONCAT(Person.Person.FirstName,' ',
				Person.Person.LastName)
		WHEN Person.Person.MiddleName IS NOT NULL THEN
				CONCAT(Person.Person.FirstName,' ',
				Person.Person.MiddleName,' ',
				Person.Person.LastName)
		END AS CustomerFullName,
		SalesOrderID,OrderDate
FROM Sales.SalesOrderHeader
FULL OUTER JOIN Sales.Customer
			ON Sales.Customer.CustomerID = Sales.SalesOrderHeader.CustomerID
LEFT JOIN Person.Person
			ON Person.Person.BusinessEntityID = Sales.Customer.PersonID
WHERE (SalesOrderID IS NULL OR OrderDate = '01/01/2013') AND Sales.Customer.CustomerID IS NOT NULL
ORDER BY CustomerID

