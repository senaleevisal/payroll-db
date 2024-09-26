CREATE OR REPLACE PROCEDURE assign_salary (
    p_emp_id IN NUMBER,
    p_basic_salary IN NUMBER,
    p_bonus IN NUMBER,
    p_deductions IN NUMBER,
    p_effective_date IN DATE
) AS
BEGIN
    INSERT INTO Salaries (salary_id, emp_id, basic_salary, bonus, deductions, effective_date)
    VALUES (Salaries_seq.NEXTVAL, p_emp_id, p_basic_salary, p_bonus, p_deductions, p_effective_date);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Salary assigned successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error assigning salary: ' || SQLERRM);
        ROLLBACK;
END;
/
