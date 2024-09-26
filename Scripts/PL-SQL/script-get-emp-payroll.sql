CREATE OR REPLACE FUNCTION get_employee_payroll(p_emp_id IN NUMBER) 
RETURN VARCHAR2 IS
    v_payroll_details VARCHAR2(1000);
BEGIN
    SELECT 'Employee: ' || e.name || ' - Payroll: ' || p.payment_amount || ' - Net Salary: ' || p.net_salary
    INTO v_payroll_details
    FROM Employees e
    INNER JOIN Payroll p ON e.emp_id = p.emp_id
    WHERE e.emp_id = p_emp_id;
    
    RETURN v_payroll_details;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No payroll found for the employee.';
END;
/
