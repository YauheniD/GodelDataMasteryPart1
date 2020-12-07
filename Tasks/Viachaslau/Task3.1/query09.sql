SELECT OH.CustomerID,
       OH.OrderDate,
       CASE 
              WHEN 
			         DATEDIFF(dd, LAG(OrderDate) OVER (PARTITION BY OH.CustomerID ORDER BY OrderDate), OrderDate) IS NULL
                     THEN '0'
              ELSE 
			         DATEDIFF(dd, LAG(OrderDate) OVER (PARTITION BY OH.CustomerID ORDER BY OrderDate), OrderDate)
              END AS DaysSinceLastOrder
FROM Sales.SalesOrderHeader AS OH
LEFT JOIN Sales.Customer AS C
       ON C.CustomerID = OH.CustomerID
LEFT JOIN Person.Person AS P
       ON P.BusinessEntityID = C.PersonID
WHERE P.LastName = 'Smith'
ORDER BY OH.CustomerID, OH.OrderDate
;
