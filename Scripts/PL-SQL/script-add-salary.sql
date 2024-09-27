CREATE OR REPLACE PROCEDURE add_salary (
    p_emp_id IN NUMBER,
    p_basic_salary IN NUMBER,
    p_bonus IN NUMBER,
    p_deductions IN NUMBER,
    p_effective_date IN DATE
) AS
BEGIN
    -- Insert the salary record into the Salaries table
    INSERT INTO Salaries (salary_id, emp_id, basic_salary, bonus, deductions, effective_date)
    VALUES (Salaries_seq.NEXTVAL, p_emp_id, p_basic_salary, p_bonus, p_deductions, p_effective_date);

    -- Commit the transaction
    COMMIT;

    -- Output a message to indicate successful insertion
    DBMS_OUTPUT.PUT_LINE('Salary added successfully for employee ID: ' || p_emp_id);
EXCEPTION
    -- Handle any exceptions and output an error message
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error adding salary for employee ID: ' || p_emp_id || '. Error: ' || SQLERRM);
        ROLLBACK;
END;
/
