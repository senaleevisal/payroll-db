CREATE OR REPLACE PROCEDURE generate_payroll_for_all_employees IS
    CURSOR emp_cursor IS
        SELECT emp_id FROM Employees;
BEGIN
    -- Loop through all employees and generate payroll
    FOR emp_rec IN emp_cursor LOOP
        -- Call the payroll processing procedure for each employee
        process_payroll(
            p_emp_id => emp_rec.emp_id,
            p_payroll_period => TO_CHAR(SYSDATE, 'Month YYYY'),
            p_payment_amount => generate_salary(emp_rec.emp_id), -- Call the salary generation function
            p_tax_amount => (generate_salary(emp_rec.emp_id) * 0.1)  -- Assuming 10% tax
        );
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Payroll generated for all employees for the period: ' || TO_CHAR(SYSDATE, 'Month YYYY'));
END;
/
