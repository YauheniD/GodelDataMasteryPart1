--Query 7
SELECT DISTINCT
    SC.CustomerID,
    P.FirstName + ' ' + COALESCE(P.MiddleName+ ' ', '') + P.LastName AS CustomerFullName,
    CASE
        WHEN YEAR(SOI.OrderDate) = '2013' THEN 'Yes'
        ELSE 'No'
    END AS Has_Orders_in_2013
FROM AdventureWorks2019.Sales.SalesOrderHeader SOI
RIGHT JOIN AdventureWorks2019.Sales.Customer SC 
    ON SC.CustomerID=SOI.CustomerID 
    AND YEAR(SOI.OrderDate) = 2013
JOIN AdventureWorks2019.Person.Person P 
    ON SC.PersonID=P.BusinessEntityID
WHERE P.FirstName = 'Zoe'
ORDER BY Sc.CustomerID
;
