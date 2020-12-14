-- # 2. Show the dates of birf of the oldest and the youngest employee
SELECT MIN(BirthDate) AS DOB_of_the_oldest, MAX(BirthDate) AS DOB_of_the_youngest FROM HumanResources.Employee
;
