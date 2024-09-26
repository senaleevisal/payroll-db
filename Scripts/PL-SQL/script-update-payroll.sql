CREATE OR REPLACE TRIGGER update_payroll_after_salary_change
AFTER UPDATE OF basic_salary, bonus, deductions ON Salaries
FOR EACH ROW
DECLARE
    v_net_salary NUMBER;
    v_payment_amount NUMBER;
    v_tax_amount NUMBER;
BEGIN
    -- Calculate new payment amount and net salary based on new salary details
    v_payment_amount := :NEW.basic_salary + NVL(:NEW.bonus, 0);
    v_tax_amount := v_payment_amount * 0.1;  -- Assuming a 10% tax
    v_net_salary := v_payment_amount - NVL(:NEW.deductions, 0) - v_tax_amount;

    -- Update the payroll table with the new salary information
    UPDATE Payroll
    SET payment_amount = v_payment_amount,
        net_salary = v_net_salary,
        tax_amount = v_tax_amount,
        generated_date = SYSDATE
    WHERE emp_id = :NEW.emp_id;

    DBMS_OUTPUT.PUT_LINE('Payroll updated for employee ID: ' || :NEW.emp_id);
END;
/
