CREATE OR REPLACE PROCEDURE process_payroll (
    p_emp_id IN NUMBER,
    p_payroll_period IN VARCHAR2,
    p_payment_amount IN NUMBER,
    p_tax_amount IN NUMBER
) AS
BEGIN
    -- Insert payroll record into the Payroll table
    INSERT INTO Payroll (payroll_id, emp_id, generated_date, payment_amount, net_salary, tax_amount, payroll_period)
    VALUES (Payroll_seq.NEXTVAL, p_emp_id, SYSDATE, p_payment_amount, p_payment_amount - p_tax_amount, p_tax_amount, p_payroll_period);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Payroll processed for employee ID: ' || p_emp_id);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error processing payroll for employee ID: ' || p_emp_id || '. Error: ' || SQLERRM);
        ROLLBACK;
END;
/
