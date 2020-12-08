--Query  8
SELECT DISTINCT
    Customer.CustomerID,
    MONTH(SOH.OrderDate) OrderMonth,
    (
    SELECT SUM(S.OrderQty)
    FROM Sales.SalesOrderHeader SOH2 
    JOIN Sales.SalesOrderDetail S
        ON SOH2.SalesOrderID = S.SalesOrderID
    WHERE 
        SOH2.CustomerID = Customer.CustomerID
        AND
        MONTH(SOH.OrderDate) = Month(SOH2.OrderDate)
    ),
    (
    SELECT SUM(S.OrderQty)
    FROM Sales.SalesOrderHeader SOH2 
    JOIN Sales.SalesOrderDetail S 
        ON SOH2.SalesOrderID = S.SalesOrderID
    WHERE 
        SOH2.CustomerID=Customer.CustomerID
        AND
        MONTH(SOH.OrderDate) >= Month(SOH2.OrderDate)
    )
FROM Sales.Customer
JOIN Sales.SalesOrderHeader SOH 
    ON Customer.CustomerID = SOH.CustomerID
JOIN Sales.SalesOrderDetail SOD
    ON SOH.SalesOrderID = SOD.SalesOrderID
JOIN Person.Person P
    ON P.BusinessEntityID = Customer.PersonID
WHERE P.LastName = 'Adams'
ORDER BY CustomerID, OrderMonth
;
