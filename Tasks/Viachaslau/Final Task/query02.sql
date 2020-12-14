SELECT CountryRegionCode,
       StateProvinceCode
FROM Person.StateProvince
WHERE StateProvinceCode LIKE 'A%'
ORDER BY CountryRegionCode,
       StateProvinceCode
;
