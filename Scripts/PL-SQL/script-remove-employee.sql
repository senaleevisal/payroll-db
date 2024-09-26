CREATE OR REPLACE PROCEDURE remove_employee(p_emp_id IN NUMBER) AS
BEGIN
    -- First, delete all dependent records related to the employee
    DELETE FROM Salaries WHERE emp_id = p_emp_id;
    DELETE FROM Payroll WHERE emp_id = p_emp_id;
    DELETE FROM Leaves WHERE emp_id = p_emp_id;
    DELETE FROM Deductions WHERE emp_id = p_emp_id;
    DELETE FROM Benefits WHERE emp_id = p_emp_id;

    -- Finally, delete the employee record
    DELETE FROM Employees WHERE emp_id = p_emp_id;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Employee with ID ' || p_emp_id || ' has been removed successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error removing employee: ' || SQLERRM);
        ROLLBACK;
END;
/
