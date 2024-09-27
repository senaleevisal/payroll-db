CREATE SEQUENCE Salaries_seq
    START WITH 1  -- Start at 1
    INCREMENT BY 1  -- Increment by 1 for each new value
    NOCACHE  -- No caching of sequence values (optional)
    NOCYCLE;  -- Sequence will not cycle after reaching max value

ALTER PROCEDURE assign_salary COMPILE;

CREATE SEQUENCE Employees_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;


CREATE SEQUENCE Deductions_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;


CREATE SEQUENCE Benefits_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;


CREATE SEQUENCE Leaves_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;


CREATE SEQUENCE Payroll_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;


ALTER PROCEDURE assign_salary COMPILE;
ALTER PROCEDURE add_employee COMPILE;
ALTER PROCEDURE add_deduction COMPILE;
ALTER PROCEDURE add_benefit COMPILE;
ALTER PROCEDURE apply_leave_with_limit COMPILE;
ALTER PROCEDURE generate_payroll_for_all_employees COMPILE;
ALTER PROCEDURE remove_employee COMPILE;
ALTER PROCEDURE get_employee_payroll COMPILE;


CREATE SEQUENCE Salaries_seq START WITH 1 INCREMENT BY 1;
