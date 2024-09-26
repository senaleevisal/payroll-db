CREATE OR REPLACE PROCEDURE add_employee (
    p_name IN VARCHAR2,
    p_designation IN VARCHAR2,
    p_status IN VARCHAR2,
    p_hire_date IN DATE,
    p_department_id IN NUMBER,
    p_role_id IN NUMBER
) AS
BEGIN
    INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id)
    VALUES (Employees_seq.NEXTVAL, p_name, p_designation, p_status, p_hire_date, p_department_id, p_role_id);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Employee added successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error adding employee: ' || SQLERRM);
        ROLLBACK;
END;
/
