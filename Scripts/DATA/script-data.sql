-- Insert records into the Departments table
INSERT INTO Departments (department_id, department_name, manager_id) 
VALUES (1, 'Sales', 001);

INSERT INTO Departments (department_id, department_name, manager_id) 
VALUES (2, 'Human Resources', 002);

INSERT INTO Departments (department_id, department_name, manager_id) 
VALUES (3, 'Finance', 003);

INSERT INTO Departments (department_id, department_name,manager_id) 
VALUES (4, 'Marketing',004); 


select * FROM Departments;



-- Insert data into the Role table
INSERT INTO Role (role_id, role_name, access_level) 
VALUES (1, 'Manager', 'High');

INSERT INTO Role (role_id, role_name, access_level) 
VALUES (2, 'Junior Analyst', 'Medium');

INSERT INTO Role (role_id, role_name, access_level) 
VALUES (3, 'Administrative Assistant', 'Medium');

INSERT INTO Role (role_id, role_name, access_level) 
VALUES (4, 'Sales Assistant', 'Low');

INSERT INTO Role (role_id, role_name, access_level) 
VALUES (5, 'Customer Support Representative', 'Low');

SELECT * FROM Role;

-- Insert data into the Employees table
INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (1, 'Saman Kumara', 'Manager', 'Active', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 1, 1);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (2, 'Ruwan Perera', 'Junior Analyst', 'Active', TO_DATE('2021-02-15', 'YYYY-MM-DD'), 2, 2);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (3, 'Nimal Sudira', 'Administrative Assistant', 'Active', TO_DATE('2021-03-10', 'YYYY-MM-DD'), 3, 3);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (4, 'Manujaya Dilshan', 'Sales Assistant', 'Active', TO_DATE('2021-04-05', 'YYYY-MM-DD'), 1, 4);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (5, 'Kumara Disanayaka', 'Customer Support Representative', 'Active', TO_DATE('2021-05-12', 'YYYY-MM-DD'), 4, 5);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (6, 'Senalee Visal', 'Manager', 'Active', TO_DATE('2021-06-07', 'YYYY-MM-DD'), 2, 1);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (7, 'Pavith Jayasinghe', 'Junior Analyst', 'Active', TO_DATE('2021-07-03', 'YYYY-MM-DD'), 3, 2);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (8, 'Ravindu Kolabage', 'Administrative Assistant', 'Active', TO_DATE('2021-08-09', 'YYYY-MM-DD'), 1, 3);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (9, 'Nethsara Prabash Disanayaka', 'Sales Assistant', 'Active', TO_DATE('2021-09-15', 'YYYY-MM-DD'), 4, 4);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (10, 'Amal Perera', 'Customer Support Representative', 'Active', TO_DATE('2021-10-18', 'YYYY-MM-DD'), 2, 5);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (11, 'Kamal Gunarathna', 'Manager', 'Active', TO_DATE('2021-11-22', 'YYYY-MM-DD'), 3, 1);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (12, 'Thisara Perera', 'Junior Analyst', 'Active', TO_DATE('2021-12-01', 'YYYY-MM-DD'), 4, 2);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (13, 'Safra Siyam', 'Administrative Assistant', 'Active', TO_DATE('2022-01-15', 'YYYY-MM-DD'), 1, 3);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (14, 'Pasindu David', 'Sales Assistant', 'Active', TO_DATE('2022-02-20', 'YYYY-MM-DD'), 2, 4);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (15, 'Dinal Dahanayaka', 'Customer Support Representative', 'Active', TO_DATE('2022-03-25', 'YYYY-MM-DD'), 3, 5);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (16, 'Malindu Lakshan', 'Manager', 'Active', TO_DATE('2022-04-29', 'YYYY-MM-DD'), 4, 1);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (17, 'Supun Kumara', 'Junior Analyst', 'Active', TO_DATE('2022-05-17', 'YYYY-MM-DD'), 1, 2);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (18, 'Sadun Kumara', 'Administrative Assistant', 'Active', TO_DATE('2022-06-21', 'YYYY-MM-DD'), 2, 3);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (19, 'Tharindu Dilshan', 'Sales Assistant', 'Active', TO_DATE('2022-07-14', 'YYYY-MM-DD'), 3, 4);

INSERT INTO Employees (emp_id, name, designation, status, hire_date, department_id, role_id) 
VALUES (20, 'Nethru Randew', 'Customer Support Representative', 'Active', TO_DATE('2022-08-18', 'YYYY-MM-DD'), 4, 5);

 BEGIN
    ADD_EMPLOYEE('Saman Kumara', 'Manager', 'Active', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 1, 1);
    ADD_EMPLOYEE('Ruwan Perera', 'Junior Analyst', 'Active', TO_DATE('2021-02-15', 'YYYY-MM-DD'), 2, 2);
    ADD_EMPLOYEE('Nimal Sudira', 'Administrative Assistant', 'Active', TO_DATE('2021-03-10', 'YYYY-MM-DD'), 3, 3);
    ADD_EMPLOYEE('Manujaya Dilshan', 'Sales Assistant', 'Active', TO_DATE('2021-04-05', 'YYYY-MM-DD'), 1, 4);
    ADD_EMPLOYEE('Kumara Disanayaka', 'Customer Support Representative', 'Active', TO_DATE('2021-05-12', 'YYYY-MM-DD'), 4, 5);
    ADD_EMPLOYEE('Senalee Visal', 'Manager', 'Active', TO_DATE('2021-06-07', 'YYYY-MM-DD'), 2, 1);
    ADD_EMPLOYEE('Pavith Jayasinghe', 'Junior Analyst', 'Active', TO_DATE('2021-07-03', 'YYYY-MM-DD'), 3, 2);
    ADD_EMPLOYEE('Ravindu Kolabage', 'Administrative Assistant', 'Active', TO_DATE('2021-08-09', 'YYYY-MM-DD'), 1, 3);
    ADD_EMPLOYEE('Nethsara Prabash Disanayaka', 'Sales Assistant', 'Active', TO_DATE('2021-09-15', 'YYYY-MM-DD'), 4, 4);
    ADD_EMPLOYEE('Amal Perera', 'Customer Support Representative', 'Active', TO_DATE('2021-10-18', 'YYYY-MM-DD'), 2, 5);
    ADD_EMPLOYEE('Kamal Gunarathna', 'Manager', 'Active', TO_DATE('2021-11-22', 'YYYY-MM-DD'), 3, 1);
    ADD_EMPLOYEE('Thisara Perera', 'Junior Analyst', 'Active', TO_DATE('2021-12-01', 'YYYY-MM-DD'), 4, 2);
    ADD_EMPLOYEE('Safra Siyam', 'Administrative Assistant', 'Active', TO_DATE('2022-01-15', 'YYYY-MM-DD'), 1, 3);
    ADD_EMPLOYEE('Pasindu David', 'Sales Assistant', 'Active', TO_DATE('2022-02-20', 'YYYY-MM-DD'), 2, 4);
    ADD_EMPLOYEE('Dinal Dahanayaka', 'Customer Support Representative', 'Active', TO_DATE('2022-03-25', 'YYYY-MM-DD'), 3, 5);
    ADD_EMPLOYEE('Malindu Lakshan', 'Manager', 'Active', TO_DATE('2022-04-29', 'YYYY-MM-DD'), 4, 1);
    ADD_EMPLOYEE('Supun Kumara', 'Junior Analyst', 'Active', TO_DATE('2022-05-17', 'YYYY-MM-DD'), 1, 2);
    ADD_EMPLOYEE('Sadun Kumara', 'Administrative Assistant', 'Active', TO_DATE('2022-06-21', 'YYYY-MM-DD'), 2, 3);
    ADD_EMPLOYEE('Tharindu Dilshan', 'Sales Assistant', 'Active', TO_DATE('2022-07-14', 'YYYY-MM-DD'), 3, 4);
    ADD_EMPLOYEE('Nethru Randew', 'Customer Support Representative', 'Active', TO_DATE('2022-08-18', 'YYYY-MM-DD'), 4, 5);
END;
/
BEGIN
    ADD_EMPLOYEE('Sawindu Randew', 'Customer Support Representative', 'Active', TO_DATE('2022-08-18', 'YYYY-MM-DD'), 4, 5);
End;
/
remove_employee(20);

BEGIN

    remove_employee(20);
END;
/

SELECT * FROM EMPLOYEES;

BEGIN
    add_benefit(1,'christmas',2000);
END;
/

select * FROM BENEFITS;

SELECT * FROM SALARIES;

SELECT * FROM EMPLOYEES;

BEGIN
    assign_salary(24, 70000, 550, 121, TO_DATE('2024-06-15', 'YYYY-MM-DD'));
END;
/


DECLARE
    v_net_salary NUMBER;
BEGIN
    v_net_salary := generate_salary(4);
    DBMS_OUTPUT.PUT_LINE('The net salary is: ' || v_net_salary);
END;
/

BEGIN
    generate_payroll_for_all_employees;
END;
/



DECLARE
    v_result VARCHAR2(4000);
BEGIN
    v_result := get_employee_payroll(4);
    DBMS_OUTPUT.PUT_LINE(v_result);
END;
/



DELETE FROM Payroll;

-- Execute the assign_salary procedure for 20 employees
BEGIN
    assign_salary(4, 345000, 300, 100, TO_DATE('2024-01-15', 'YYYY-MM-DD'));
    assign_salary(5, 35500, 350, 101, TO_DATE('2024-01-15', 'YYYY-MM-DD'));
    assign_salary(6, 56000, 400, 102, TO_DATE('2024-02-01', 'YYYY-MM-DD'));
    assign_salary(7, 67200, 450, 103, TO_DATE('2024-02-01', 'YYYY-MM-DD'));
    assign_salary(8, 65800, 320, 104, TO_DATE('2024-02-15', 'YYYY-MM-DD'));
    assign_salary(9, 36100, 370, 105, TO_DATE('2024-02-15', 'YYYY-MM-DD'));
    assign_salary(10, 66400, 410, 106, TO_DATE('2024-03-01', 'YYYY-MM-DD'));
    assign_salary(11, 55700, 360, 108, TO_DATE('2024-03-01', 'YYYY-MM-DD'));
    assign_salary(12, 76600, 420, 109, TO_DATE('2024-03-15', 'YYYY-MM-DD'));
    assign_salary(13, 65300, 280, 110, TO_DATE('2024-03-15', 'YYYY-MM-DD'));
    assign_salary(14, 47000, 500, 111, TO_DATE('2024-04-01', 'YYYY-MM-DD'));
    assign_salary(15, 45800, 330, 112, TO_DATE('2024-04-01', 'YYYY-MM-DD'));
    assign_salary(16, 75900, 360, 113, TO_DATE('2024-04-15', 'YYYY-MM-DD'));
    assign_salary(17, 66100, 400, 114, TO_DATE('2024-04-15', 'YYYY-MM-DD'));
    assign_salary(18, 36500, 480, 115, TO_DATE('2024-05-01', 'YYYY-MM-DD'));
    assign_salary(19, 46200, 440, 116, TO_DATE('2024-05-01', 'YYYY-MM-DD'));
    assign_salary(20, 66800, 510, 117, TO_DATE('2024-05-15', 'YYYY-MM-DD'));
    assign_salary(21, 68600, 470, 118, TO_DATE('2024-05-15', 'YYYY-MM-DD'));
    assign_salary(22, 77200, 520, 119, TO_DATE('2024-06-01', 'YYYY-MM-DD'));
    assign_salary(23, 56100, 390, 120, TO_DATE('2024-06-01', 'YYYY-MM-DD'));
END;

-- pavith
INSERT INTO Salaries (salary_id, emp_id, basic_salary, bonus, deductions, effective_date)
VALUES (Salaries_seq.NEXTVAL, 5, 70000, 550, 121, TO_DATE('2024-06-15', 'YYYY-MM-DD'));


--pl procedure
UPDATE Salaries
SET basic_salary = 60000, bonus = 5000, deductions = 2000
WHERE emp_id = 5;

----------------------------------------------------------



BEGIN
    assign_salary(14, 47000, 500, 111, TO_DATE('2024-04-01', 'YYYY-MM-DD'));
    END;
    /

SELECT * FROM EMPLOYEES;

select * FROM BENEFITS;

SELECT * FROM EMPLOYEES WHERE emp_id = 23;

BEGIN
    ADD_BENEFIT(1,'christmas',2000);
    ADD_BENEFIT(2,'Fuel Pass',20000);
    ADD_BENEFIT(3,'Health Insurance',25000);
    ADD_BENEFIT(4,'Retirement Plans',10000);

END;
/
BEGIN
    assign_salary();
    END;

BEGIN
    remove_employee(24);
    END;
    /


SELECT * FROM SALARIES;