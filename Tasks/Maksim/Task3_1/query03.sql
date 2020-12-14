--Query  3
SELECT AVG(emp.VacationHours)/24 AVG_vacation_days,
       AVG(emp.SickLeaveHours)/24 AVG_sick_days
FROM HumanResources.Employee emp
;
