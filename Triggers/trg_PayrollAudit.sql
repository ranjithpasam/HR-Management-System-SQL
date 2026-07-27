USE HRManagementDB;
GO

CREATE TRIGGER trg_PayrollAudit
ON Payroll
AFTER UPDATE
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
        'Payroll',
        'UPDATE',
        PayrollID,
        SYSTEM_USER,
        GETDATE()
    FROM inserted;
END;
GO
