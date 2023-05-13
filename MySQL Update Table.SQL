CREATE TABLE IF NOT EXISTS employees (
    employee_id    INT PRIMARY KEY,
    first_name     VARCHAR(20) NOT NULL,
    last_name      VARCHAR(30)        DEFAULT NULL,
    email          VARCHAR(40) UNIQUE DEFAULT NULL,
    phone_number   VARCHAR(20) UNIQUE DEFAULT NULL,
    hire_date      DATE,
    job_id         VARCHAR(10) NOT NULL,
    salary         DECIMAL(7, 2)        DEFAULT NULL,
    commission_pct DECIMAL(3, 2)      DEFAULT 0.00,
    manager_id     INT                DEFAULT 0,
    department_id  INT                DEFAULT 0
);



-- 1. Write a SQL statement to change the email column of employees table with 'not available' for all employees.

UPDATE employees
SET email = 'not available';


