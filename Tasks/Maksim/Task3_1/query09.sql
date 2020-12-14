--Query  9
SELECT customer.CustomerID,
       SOH.OrderDate,
       CASE
           WHEN DATEDIFF(day,
                         LAG(SOH.OrderDate, 1) OVER (PARTITION BY SOH.CustomerID ORDER BY SOH.CustomerID,SOH.OrderDate),
                         SOH.OrderDate) IS NULL THEN '0'
           ELSE DATEDIFF(day,
                         LAG(SOH.OrderDate, 1) OVER (PARTITION BY SOH.CustomerID ORDER BY SOH.CustomerID,SOH.OrderDate),
                         SOH.OrderDate)
           END DaysSinceLastOrder

FROM Sales.Customer customer
INNER JOIN Person.Person person
        ON customer.PersonID = person.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader SOH
        ON customer.CustomerID = SOH.CustomerID
WHERE Person.LastName = 'Smith'
ORDER BY customer.CustomerID, SOH.OrderDate
;
