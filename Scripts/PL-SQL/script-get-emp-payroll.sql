CREATE OR REPLACE FUNCTION get_employee_payroll(p_emp_id IN NUMBER) 
RETURN VARCHAR2 IS
    v_payroll_details VARCHAR2(4000);  -- Increased the size of the return value
BEGIN
    -- Fetch the latest payroll details for the given employee
    SELECT 'Employee: ' || e.name || ' - Payroll: ' || p.payment_amount || ' - Net Salary: ' || p.net_salary || ' - Period: ' || p.payroll_period
    INTO v_payroll_details
    FROM Employees e
    INNER JOIN Payroll p ON e.emp_id = p.emp_id
    WHERE e.emp_id = p_emp_id
    ORDER BY p.generated_date DESC  -- Order by the most recent payroll
    FETCH FIRST 1 ROWS ONLY;  -- Ensure we only get the most recent payroll record
    
    RETURN v_payroll_details;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No payroll found for employee ID: ' || p_emp_id;
    WHEN OTHERS THEN
        RETURN 'Error retrieving payroll for employee ID: ' || p_emp_id || '. Error: ' || SQLERRM;
END;
/
