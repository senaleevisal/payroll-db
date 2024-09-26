CREATE OR REPLACE PROCEDURE assign_salary (
    p_emp_id IN NUMBER,
    p_basic_salary IN NUMBER,
    p_effective_date IN DATE
) AS
    v_total_benefits NUMBER := 0;
    v_total_deductions NUMBER := 0;
    v_bonus_with_benefits NUMBER := 0;
    v_net_salary NUMBER;
BEGIN
    -- Calculate total benefits for the employee (will be treated as a bonus)
    SELECT NVL(SUM(amount), 0) INTO v_total_benefits
    FROM Benefits
    WHERE emp_id = p_emp_id;

    -- Calculate total deductions for the employee
    SELECT NVL(SUM(amount), 0) INTO v_total_deductions
    FROM Deductions
    WHERE emp_id = p_emp_id;

    -- Treat total benefits as bonus
    v_bonus_with_benefits := v_total_benefits;

    -- Calculate net salary: basic_salary + benefits (bonus) - deductions
    v_net_salary := p_basic_salary + v_bonus_with_benefits - v_total_deductions;

    -- Insert salary record into the Salaries table
    INSERT INTO Salaries (salary_id, emp_id, basic_salary, bonus, deductions, effective_date)
    VALUES (Salaries_seq.NEXTVAL, p_emp_id, p_basic_salary, v_bonus_with_benefits, v_total_deductions, p_effective_date);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Salary assigned successfully. Net Salary: ' || v_net_salary);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error assigning salary: ' || SQLERRM);
        ROLLBACK;
END;
/
