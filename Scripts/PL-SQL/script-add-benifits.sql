CREATE OR REPLACE PROCEDURE add_benefit (
    p_emp_id IN NUMBER,
    p_benefit_type IN VARCHAR2,
    p_amount IN NUMBER
) AS
BEGIN
    INSERT INTO Benefits (benefits_id, emp_id, benefit_type, amount)
    VALUES (Benefits_seq.NEXTVAL, p_emp_id, p_benefit_type, p_amount);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Benefit added successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error adding benefit: ' || SQLERRM);
        ROLLBACK;
END;
/
