USE HRManagementDB;
GO

CREATE VIEW vw_AttendanceSummary
AS
SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    a.AttendanceDate,
    a.CheckIn,
    a.CheckOut,
    a.Status
FROM Employees e
INNER JOIN Attendance a
    ON e.EmployeeID = a.EmployeeID;
GO
