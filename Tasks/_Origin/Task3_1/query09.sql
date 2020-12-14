--¹ 9.Show the customers with order dates and the days since the previos order and customer LastName is 'Smith'
SELECT sh.CustomerID,
       sh.OrderDate,
       ISNULL(
       DATEDIFF(day, LAG(sh.OrderDate) OVER (PARTITION BY sh.CustomerID ORDER BY sh.OrderDate), sh.OrderDate), 0) AS DaysSinceLastOrder
FROM Sales.SalesOrderHeader sh
     JOIN Sales.Customer c ON sh.CustomerID = c.CustomerID
     JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
WHERE p.LastName = 'Smith' 
ORDER BY CustomerID,
         OrderDate
;
