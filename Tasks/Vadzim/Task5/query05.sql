--Query 5
SELECT 
    pp.BusinessEntityID,
    pp.LastName,
    pp.FirstName
FROM Person.Person AS pp
JOIN HumanResources.Employee AS hre 
    ON (pp.BusinessEntityID = hre.BusinessEntityID)
JOIN HumanResources.EmployeeDepartmentHistory AS hreedh 
    ON (hre.BusinessEntityID = hreedh.BusinessEntityID)
JOIN HumanResources.Department AS hrd 
    ON (hrd.DepartmentID = hreedh.DepartmentID)
WHERE hrd.Name = 'Sales'
EXCEPT
SELECT
    pp.BusinessEntityID,
    pp.LastName,
    pp.FirstName
FROM Person.Person AS pp
JOIN HumanResources.Employee AS hre 
    ON (pp.BusinessEntityID = hre.BusinessEntityID)
JOIN Sales.SalesOrderHeader AS ssoh
    ON (ssoh.SalesPersonID = hre.BusinessEntityID)
WHERE YEAR(ssoh.OrderDate) = 2012
;
