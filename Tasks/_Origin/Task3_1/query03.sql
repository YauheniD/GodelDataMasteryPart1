-- # 3. Show average Vacation days and Sick leave days
SELECT AVG(VacationHours)/24 AS AVG_vacation_days, AVG(SickLeaveHours)/24 AS AVG_sick_days FROM HumanResources.Employee;