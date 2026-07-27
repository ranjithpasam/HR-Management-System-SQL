USE HRManagementDB;
GO

------------------------------------------------------------
-- 1. Total Employees in each Department
------------------------------------------------------------
SELECT
    d.DepartmentName,
    COUNT(e.EmployeeID) AS TotalEmployees
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

------------------------------------------------------------
-- 2. Average Salary by Department
------------------------------------------------------------
SELECT
    d.DepartmentName,
    AVG(e.Salary) AS AverageSalary
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;

------------------------------------------------------------
-- 3. Departments having more than one employee
------------------------------------------------------------
SELECT
    DepartmentID,
    COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*) > 1;

------------------------------------------------------------
-- 4. Employees with salary greater than average salary
------------------------------------------------------------
SELECT *
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees
);

------------------------------------------------------------
-- 5. Employee Salary Category
------------------------------------------------------------
SELECT
    FirstName,
    Salary,
    CASE
        WHEN Salary >= 80000 THEN 'High'
        WHEN Salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END AS SalaryCategory
FROM Employees;

------------------------------------------------------------
-- 6. Employees who have taken leave
------------------------------------------------------------
SELECT
    e.FirstName,
    l.LeaveType,
    l.Status
FROM Employees e
JOIN LeaveRequests l
ON e.EmployeeID = l.EmployeeID;

------------------------------------------------------------
-- 7. Employee Attendance Summary
------------------------------------------------------------
SELECT
    e.FirstName,
    COUNT(a.AttendanceID) AS AttendanceDays
FROM Employees e
JOIN Attendance a
ON e.EmployeeID = a.EmployeeID
GROUP BY e.FirstName;

------------------------------------------------------------
-- 8. Payroll Report
------------------------------------------------------------
SELECT
    e.FirstName,
    p.BasicSalary,
    p.Bonus,
    p.Deductions,
    p.NetSalary
FROM Employees e
JOIN Payroll p
ON e.EmployeeID = p.EmployeeID;

------------------------------------------------------------
-- 9. Employee Performance Report
------------------------------------------------------------
SELECT
    e.FirstName,
    p.Rating,
    p.ManagerComments
FROM Employees e
JOIN Performance p
ON e.EmployeeID = p.EmployeeID;

------------------------------------------------------------
-- 10. Project Assignment Report
------------------------------------------------------------
SELECT
    e.FirstName,
    pr.ProjectName,
    ep.RoleInProject
FROM EmployeeProjects ep
JOIN Employees e
ON ep.EmployeeID = e.EmployeeID
JOIN Projects pr
ON ep.ProjectID = pr.ProjectID;
GO
