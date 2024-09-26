CREATE OR REPLACE TRIGGER assign_default_benefits
AFTER INSERT ON Employees
FOR EACH ROW
BEGIN
    -- Assign health insurance as a default benefit to new employees
    INSERT INTO Benefits (benefits_id, emp_id, benefit_type, amount)
    VALUES (Benefits_seq.NEXTVAL, :NEW.emp_id, 'Health Insurance', 100);

    DBMS_OUTPUT.PUT_LINE('Default health insurance assigned to employee ID: ' || :NEW.emp_id);
END;
/
