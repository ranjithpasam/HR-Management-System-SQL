USE HRManagementDB;
GO

------------------------------------------------------------
-- 1. Display all employees
------------------------------------------------------------
SELECT * FROM Employees;

------------------------------------------------------------
-- 2. Display all departments
------------------------------------------------------------
SELECT * FROM Departments;

------------------------------------------------------------
-- 3. Employee with Department Name
------------------------------------------------------------
SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    d.DepartmentName,
    e.Salary
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

------------------------------------------------------------
-- 4. Employees earning more than 70000
------------------------------------------------------------
SELECT *
FROM Employees
WHERE Salary > 70000;

------------------------------------------------------------
-- 5. Employees ordered by salary
------------------------------------------------------------
SELECT *
FROM Employees
ORDER BY Salary DESC;

------------------------------------------------------------
-- 6. Employees hired after 2023
------------------------------------------------------------
SELECT *
FROM Employees
WHERE HireDate > '2023-01-01';

------------------------------------------------------------
-- 7. Count employees
------------------------------------------------------------
SELECT COUNT(*) AS TotalEmployees
FROM Employees;

------------------------------------------------------------
-- 8. Average Salary
------------------------------------------------------------
SELECT AVG(Salary) AS AverageSalary
FROM Employees;

------------------------------------------------------------
-- 9. Highest Salary
------------------------------------------------------------
SELECT MAX(Salary) AS HighestSalary
FROM Employees;

------------------------------------------------------------
-- 10. Lowest Salary
------------------------------------------------------------
SELECT MIN(Salary) AS LowestSalary
FROM Employees;
