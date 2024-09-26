BEGIN
    assign_salary(1, 50000, TO_DATE('01-JAN-2021', 'DD-MON-YYYY'));
END;
/


END;
/
SELECT * FROM departments;

 SHOW ERRORS PROCEDURE assign_salary;


add_benefit(1,'Health Insurance', 5000);