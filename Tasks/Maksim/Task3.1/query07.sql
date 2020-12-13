--Query  7
SELECT
    customer.CustomerID,
    YEAR(SOH.OrderDate) Year,
    SOH.SalesOrderID,
    SOH.TotalDue,
    SUM(SOH.TotalDue) OVER(PARTITION BY YEAR(SOH.OrderDate) ) customer_Sales_Over_Year,
    SUM(SOH.TotalDue) OVER(PARTITION BY SOH.CustomerID) Total_Customer_Sales,
    SUM(SOH.TotalDue) OVER() Total_Business_Sales
FROM Sales.Customer customer
INNER JOIN Sales.SalesOrderHeader SOH 
        ON SOH.CustomerID = customer.CustomerID
INNER JOIN Sales.SalesTerritory ST 
        ON ST.TerritoryID = SOH.TerritoryID
WHERE ST.Name = 'Northeast'
ORDER BY customer.CustomerID, Year
;
