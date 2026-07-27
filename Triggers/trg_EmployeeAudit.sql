USE HRManagementDB;
GO

CREATE TRIGGER trg_EmployeeAudit
ON Employees
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO AuditLog
    (
        TableName,
        ActionType,
        RecordID,
        ActionBy,
        ActionDate
    )
    SELECT
        'Employees',
        'INSERT',
        EmployeeID,
        SYSTEM_USER,
        GETDATE()
    FROM inserted;
END;
GO
