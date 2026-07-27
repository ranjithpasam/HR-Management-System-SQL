USE HRManagementDB;
GO

CREATE PROCEDURE usp_AttendanceReport
AS
BEGIN
    SET NOCOUNT ON;

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
        ON e.EmployeeID = a.EmployeeID
    ORDER BY a.AttendanceDate DESC;
END;
GO
