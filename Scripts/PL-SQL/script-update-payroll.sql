CREATE OR REPLACE TRIGGER update_payroll_after_salary_change
FOR UPDATE OF basic_salary, bonus, deductions ON Salaries
COMPOUND TRIGGER
    -- Define variables for compound trigger to store values
    TYPE payroll_update_rec IS RECORD (
        emp_id NUMBER,
        payment_amount NUMBER,
        net_salary NUMBER,
        tax_amount NUMBER
    );
    payroll_update_list SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(); -- List to hold update values

    BEFORE STATEMENT IS
    BEGIN
        -- Initialize the list for tracking payroll updates
        payroll_update_list.DELETE;
    END BEFORE STATEMENT;

    AFTER EACH ROW IS
    BEGIN
        -- Calculate new payment amount and net salary based on new salary details
        payroll_update_list.EXTEND;  -- Add new row to the list
        payroll_update_list(payroll_update_list.COUNT) := :NEW.emp_id || ':' ||
                                                          NVL(:NEW.basic_salary, 0) + NVL(:NEW.bonus, 0) - NVL(:NEW.deductions, 0) - 
                                                          (NVL(:NEW.basic_salary, 0) * 0.1);
    END AFTER EACH ROW;

    AFTER STATEMENT IS
    BEGIN
        -- Now update the Payroll table after the row-level events are completed
        FOR i IN 1 .. payroll_update_list.COUNT LOOP
            -- Extract emp_id and salary details from list
            DECLARE
                emp_id_to_update NUMBER;
                salary_data VARCHAR2(4000);
                v_payment_amount NUMBER;
                v_tax_amount NUMBER;
                v_net_salary NUMBER;
            BEGIN
                salary_data := payroll_update_list(i);
                emp_id_to_update := TO_NUMBER(SUBSTR(salary_data, 1, INSTR(salary_data, ':') - 1));
                v_net_salary := TO_NUMBER(SUBSTR(salary_data, INSTR(salary_data, ':') + 1));
                v_tax_amount := v_net_salary * 0.1;
                v_payment_amount := v_net_salary + v_tax_amount;
                
                -- Update payroll table
                UPDATE Payroll
                SET payment_amount = v_payment_amount,
                    net_salary = v_net_salary,
                    tax_amount = v_tax_amount,
                    generated_date = SYSDATE
                WHERE emp_id = emp_id_to_update;

                DBMS_OUTPUT.PUT_LINE('Payroll updated for employee ID: ' || emp_id_to_update);
            END;
        END LOOP;
    END AFTER STATEMENT;
END update_payroll_after_salary_change;
/
