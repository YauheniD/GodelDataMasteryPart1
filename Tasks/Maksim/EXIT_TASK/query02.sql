--Query  2
SELECT ST.Name StateProvinceName,
       ad.AddressLine1
FROM Person.StateProvince ST
LEFT JOIN Person.Address ad
       ON ST.StateProvinceID = ad.StateProvinceID
WHERE ST.Name  LIKE 'A%'
ORDER BY StateProvinceName, AddressLine1
;
