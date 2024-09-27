CREATE OR REPLACE PROCEDURE generate_payroll_for_all_employees IS
    CURSOR emp_cursor IS
        SELECT emp_id FROM Employees;

    v_payment_amount NUMBER;
    v_tax_amount NUMBER;
    v_net_salary NUMBER;
BEGIN
    -- Loop through all employees and generate payroll
    FOR emp_rec IN emp_cursor LOOP
        -- Call the salary generation function
        v_net_salary := generate_salary(emp_rec.emp_id);

        -- Calculate tax (assuming 10%)
        v_tax_amount := v_net_salary * 0.1;

        -- Call the payroll processing procedure for each employee
        process_payroll(
            p_emp_id => emp_rec.emp_id,
            p_payroll_period => TO_CHAR(SYSDATE, 'Month YYYY'),
            p_payment_amount => v_net_salary,
            p_tax_amount => v_tax_amount
        );
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Payroll generated for all employees for the period: ' || TO_CHAR(SYSDATE, 'Month YYYY'));
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error generating payroll: ' || SQLERRM);
        ROLLBACK;
END;
/
