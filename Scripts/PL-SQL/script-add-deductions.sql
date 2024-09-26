CREATE OR REPLACE PROCEDURE add_deduction (
    p_emp_id IN NUMBER,
    p_deduction_type IN VARCHAR2,
    p_amount IN NUMBER
) AS
BEGIN
    INSERT INTO Deductions (deduction_id, emp_id, deduction_type, amount)
    VALUES (Deductions_seq.NEXTVAL, p_emp_id, p_deduction_type, p_amount);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Deduction added successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error adding deduction: ' || SQLERRM);
        ROLLBACK;
END;
/
