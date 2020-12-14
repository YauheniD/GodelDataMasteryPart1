SELECT COUNT(*) 
FROM HumanResources.Employee
INNER JOIN Sales.SalesPerson
       ON Sales.SalesPerson.BusinessEntityID = HumanResources.Employee.BusinessEntityID
WHERE MaritalStatus = 'M'
;
