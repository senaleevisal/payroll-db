-- Departments Table
CREATE TABLE Departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(255) NOT NULL,
    manager_id NUMBER
);

-- Employees Table
CREATE TABLE Employees (
    emp_id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    designation VARCHAR2(255),
    status VARCHAR2(50),
    hire_date DATE,
    department_id NUMBER,
    role_id NUMBER,
    CONSTRAINT fk_department
        FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    CONSTRAINT fk_role
        FOREIGN KEY (role_id) REFERENCES Role(role_id)
);

-- Salaries Table
CREATE TABLE Salaries (
    salary_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    effective_date DATE,
    basic_salary NUMBER(10, 2),
    bonus NUMBER(10, 2),
    deductions NUMBER(10, 2),
    CONSTRAINT fk_employee_salary
        FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- Payroll Table
CREATE TABLE Payroll (
    payroll_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    generated_date DATE,
    payment_amount NUMBER(10, 2),
    net_salary NUMBER(10, 2),
    tax_amount NUMBER(10, 2),
    payroll_period VARCHAR2(50),
    CONSTRAINT fk_employee_payroll
        FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- Leaves Table
CREATE TABLE Leaves (
    leave_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    leave_type VARCHAR2(255),
    leave_start DATE,
    leave_end DATE,
    approval_status VARCHAR2(50),
    CONSTRAINT fk_employee_leave
        FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- Role Table
CREATE TABLE Role (
    role_id NUMBER PRIMARY KEY,
    role_name VARCHAR2(255),
    access_level VARCHAR2(50)
);

-- Deductions Table
CREATE TABLE Deductions (
    deduction_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    deduction_type VARCHAR2(255),
    amount NUMBER(10, 2),
    CONSTRAINT fk_employee_deduction
        FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- Benefits Table
CREATE TABLE Benefits (
    benefits_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    benefit_type VARCHAR2(255),
    amount NUMBER(10, 2),
    CONSTRAINT fk_employee_benefit
        FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);
