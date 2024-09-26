CREATE OR REPLACE PROCEDURE apply_leave_with_limit (
    p_emp_id IN NUMBER,
    p_leave_type IN VARCHAR2,
    p_leave_start IN DATE,
    p_leave_end IN DATE
) AS
    v_leave_count NUMBER;
    v_days_applied NUMBER;
    v_approval_status VARCHAR2(50) := 'Approved';
    v_deduction_amount NUMBER := 0;
BEGIN
    -- Calculate number of leaves applied
    v_days_applied := p_leave_end - p_leave_start + 1;

    -- Check how many leaves the employee has taken in the current month
    SELECT COUNT(*)
    INTO v_leave_count
    FROM Leaves
    WHERE emp_id = p_emp_id
    AND EXTRACT(MONTH FROM leave_start) = EXTRACT(MONTH FROM SYSDATE);

    -- If total leaves exceed 10, the excess leaves will be unpaid
    IF v_leave_count + v_days_applied > 10 THEN
        v_approval_status := 'Partially Approved';
        DECLARE
            v_basic_salary NUMBER;
        BEGIN
            SELECT basic_salary / 30
            INTO v_basic_salary
            FROM Salaries
            WHERE emp_id = p_emp_id;
            
            v_deduction_amount := (v_leave_count + v_days_applied - 10) * v_basic_salary;
        END;
        DBMS_OUTPUT.PUT_LINE('Excess leaves taken. Deduction applied: ' || v_deduction_amount);
        
        -- Insert deduction record
        INSERT INTO Deductions (deduction_id, emp_id, deduction_type, amount)
        VALUES (Deductions_seq.NEXTVAL, p_emp_id, 'No Pay Leaves', v_deduction_amount);
    END IF;

    -- Insert leave record
    INSERT INTO Leaves (leave_id, emp_id, leave_type, leave_start, leave_end, approval_status)
    VALUES (Leaves_seq.NEXTVAL, p_emp_id, p_leave_type, p_leave_start, p_leave_end, v_approval_status);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Leave applied successfully with approval status: ' || v_approval_status);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error applying leave with limit: ' || SQLERRM);
        ROLLBACK;
END;
/
