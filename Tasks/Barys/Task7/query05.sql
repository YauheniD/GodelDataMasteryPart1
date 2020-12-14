--Query 5
DELETE FROM O
FROM dbo.Orders O
JOIN dbo.Customers C
    ON C.CustomerID = O.CustomerID
WHERE C.CountryRegionCode = 'FR'
;
