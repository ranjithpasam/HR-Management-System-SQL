USE HRManagementDB;
GO

CREATE PROCEDURE usp_ApproveLeave
(
    @LeaveID INT
)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE LeaveRequests
    SET Status = 'Approved'
    WHERE LeaveID = @LeaveID;

    SELECT
        LeaveID,
        EmployeeID,
        LeaveType,
        StartDate,
        EndDate,
        Status
    FROM LeaveRequests
    WHERE LeaveID = @LeaveID;
END;
GO
