--Query  8
SELECT DISTINCT
       Customer.CustomerID,
       MONTH(SOH.OrderDate) Month,
       (SELECT SUM(S.OrderQty)
        FROM Sales.Customer c 
        INNER JOIN Sales.SalesOrderHeader SOH2 
                ON c.CustomerID = SOH2.CustomerID
        INNER JOIN Sales.SalesOrderDetail S
                ON SOH2.SalesOrderID = S.SalesOrderID
        WHERE c.CustomerID = Customer.CustomerID
              AND
              MONTH(SOH.OrderDate) = Month(SOH2.OrderDate)),
       (SELECT SUM(S.OrderQty)
        FROM Sales.Customer c1
        INNER JOIN Sales.SalesOrderHeader SOH2 
                ON c1.CustomerID = SOH2.CustomerID
        INNER JOIN Sales.SalesOrderDetail S 
                ON SOH2.SalesOrderID = S.SalesOrderID
        WHERE c1.CustomerID=Customer.CustomerID
              AND
              MONTH(SOH.OrderDate) >= Month(SOH2.OrderDate))
FROM Sales.Customer
INNER JOIN Sales.SalesOrderHeader SOH 
        ON Customer.CustomerID = SOH.CustomerID
INNER JOIN Sales.SalesOrderDetail SOD
        ON SOH.SalesOrderID = SOD.SalesOrderID
WHERE EXISTS(
             SELECT *
             FROM Person.Person person
             WHERE person.LastName = 'Adams'
                   AND
                   person.BusinessEntityID = Customer.PersonID)
ORDER BY CustomerID, Month
;
