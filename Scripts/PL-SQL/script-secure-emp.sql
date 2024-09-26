CREATE OR REPLACE TRIGGER prevent_delete_employee_with_payroll
BEFORE DELETE ON Employees
FOR EACH ROW
DECLARE
    v_payroll_count NUMBER;
BEGIN
    -- Check if the employee has any payroll records
    SELECT COUNT(*) INTO v_payroll_count
    FROM Payroll
    WHERE emp_id = :OLD.emp_id;

    -- If payroll records exist, prevent deletion
    IF v_payroll_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Cannot delete employee with active payroll records.');
    END IF;
END;
/
