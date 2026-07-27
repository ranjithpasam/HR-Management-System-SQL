USE HRManagementDB;
GO

CREATE VIEW vw_EmployeeDetails
AS
SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    e.Email,
    e.Phone,
    e.HireDate,
    e.Salary,
    d.DepartmentName,
    d.Location
FROM Employees e
INNER JOIN Departments d
    ON e.DepartmentID = d.DepartmentID;
GO
