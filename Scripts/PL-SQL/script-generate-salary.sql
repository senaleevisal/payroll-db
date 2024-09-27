CREATE OR REPLACE FUNCTION generate_salary(p_emp_id IN NUMBER) 
RETURN NUMBER IS
    v_basic_salary NUMBER;
    v_bonus NUMBER;
    v_deductions NUMBER;
    v_net_salary NUMBER;
BEGIN
    -- Retrieve basic salary, bonus, and deductions for the employee
    -- Assumes that there is only one salary record per employee. 
    -- If there can be multiple, you might want to add a condition (like the most recent effective date).
    SELECT basic_salary, NVL(bonus, 0), NVL(deductions, 0)
    INTO v_basic_salary, v_bonus, v_deductions
    FROM Salaries
    WHERE emp_id = p_emp_id;
    
    -- Calculate net salary
    v_net_salary := v_basic_salary + v_bonus - v_deductions;
    
    -- Return the calculated net salary
    RETURN v_net_salary;

EXCEPTION
    -- Catch no data found error, if there's no salary for the employee
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee salary not found for emp_id: ' || p_emp_id);
        RETURN 0;

    -- Catch any other errors
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error generating salary: ' || SQLERRM);
        RETURN 0;
END;
/
