--Query 7
SELECT
    sc.CustomerID,
    (SELECT Name FROM Production.Product 
        WHERE
            Name = 'Mountain-300 Black, 48'
            AND
            ProductID IN (SELECT ProductID FROM Sales.SalesOrderDetail
                WHERE SalesOrderID IN (SELECT SalesOrderID FROM Sales.SalesOrderHeader
                    WHERE CustomerID IN (SELECT CustomerID FROM Sales.Customer
                        WHERE CustomerID = sc.CustomerID)))
            
            )
FROM Sales.Customer AS sc
WHERE CustomerID IN (SELECT CustomerID FROM Sales.SalesOrderHeader 
    WHERE SalesOrderID IN  (SELECT SalesOrderID FROM Sales.SalesOrderDetail 
        WHERE ProductID IN (SELECT ProductID FROM Production.Product  
            WHERE Name = 'Mountain-300 Black, 48') )) 
ORDER BY CustomerID
;
