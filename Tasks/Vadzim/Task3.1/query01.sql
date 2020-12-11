--Query 1
SELECT
    COUNT(hre.BusinessEntityID) AS Number_of_people
FROM HumanResources.Employee AS hre
JOIN Sales.SalesPerson AS ssp ON (hre.BusinessEntityID = ssp.BusinessEntityID)
WHERE 
    MaritalStatus = 'M'
;
