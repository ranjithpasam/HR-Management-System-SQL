USE HRManagementDB;
GO

CREATE PROCEDURE usp_GetEmployeePerformance
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        e.EmployeeID,
        e.FirstName,
        e.LastName,
        d.DepartmentName,
        p.ReviewDate,
        p.Rating,
        p.ManagerComments
    FROM Employees e
    INNER JOIN Performance p
        ON e.EmployeeID = p.EmployeeID
    INNER JOIN Departments d
        ON e.DepartmentID = d.DepartmentID
    ORDER BY p.Rating DESC;
END;
GO
