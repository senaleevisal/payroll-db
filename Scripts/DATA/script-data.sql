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