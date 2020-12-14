--Task 1
SELECT
    COUNT(E.BusinessEntityID) AS Number_of_people
FROM HumanResources.Employee E
JOIN Sales.SalesPerson SP
    ON SP.BusinessEntityID = E.BusinessEntityID
WHERE 
    E.MaritalStatus = 'M'
;
