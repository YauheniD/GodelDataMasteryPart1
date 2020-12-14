SELECT DISTINCT JobTitle,
       AVG(Rate) OVER (PARTITION BY JobTitle) AS 'Average rate',
       COUNT(EPH.BusinessEntityID) OVER (PARTITION BY JobTitle) AS [Employee's Count]
FROM HumanResources.Employee AS E
INNER JOIN (
       SELECT BusinessEntityID,
              MAX(RateChangeDate) AS RateChange,
              Rate
       FROM HumanResources.EmployeePayHistory
       GROUP BY BusinessEntityID,
              Rate
       ) AS EPH
       ON E.BusinessEntityID = EPH.BusinessEntityID
ORDER BY 'Average rate' DESC
;
