USE HRManagementDB;
GO

------------------------------------------------------------
-- Query before creating indexes
------------------------------------------------------------

SELECT *
FROM Employees
WHERE Email = 'rahul.sharma@company.com';

------------------------------------------------------------
-- Query using composite index
------------------------------------------------------------

SELECT *
FROM Employees
WHERE DepartmentID = 2
AND Salary > 60000;

------------------------------------------------------------
-- Query using HireDate index
------------------------------------------------------------

SELECT
    FirstName,
    LastName,
    Salary
FROM Employees
WHERE HireDate >= '2023-01-01';
GO
