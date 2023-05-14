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

-- Load data from Update Table DB.txt


-- 1. Write a SQL statement to change the email column of employees table with 'not available' for all employees.

UPDATE employees
SET email = 'not available';


-- 2. Write a SQL statement to change the email and commission_pct column of employees table
-- with 'not available' and 0.10 for all employees.

UPDATE employees
SET email = 'not available',
    commission_pct = 0.10;


-- 3. Write a SQL statement to change the email and commission_pct column of employees table
-- with 'not available' and 0.10 for those employees whose department_id is 110.

UPDATE employees
SET email = 'not available',
    commission_pct = 0.10
WHERE department_id = 110;


-- 4. Write a SQL statement to change the email column of employees table with 'not available'
-- for those employees whose department_id is 80 and gets a commission_pct is less than .20

UPDATE employees
SET email = 'not available'
WHERE department_id = 80 AND commission_pct < .20;


-- 5. Write a SQL statement to change the email column of employees table with 'not available' for those employees
-- who belongs to the 'Accounting' department.

CREATE TABLE IF NOT EXISTS departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(30) UNIQUE NOT NULL,
    manager_id INT DEFAULT NULL,
    location_id INT DEFAULT NULL
);

-- Load data from Update Table departments data.txt

UPDATE employees
SET email = 'not available'
WHERE department_id = 110;


-- 6. Write a SQL statement to change salary of employee to 8000 whose ID is 105,
-- if the existing salary is less than 5000.

UPDATE employees
SET salary = 8000
WHERE employee_id = 105 AND salary < 5000;


-- 7. Write a SQL statement to change job ID of employee which ID is 118, to SH_CLERK if the employee
-- belongs to department, which ID is 30 and the existing job ID does not start with SH.

UPDATE employees
SET job_id = 'SH_CLERK' WHERE employee_id = 118
AND department_id = 30 AND  NOT job_id LIKE 'SH%';


-- 8. Write a SQL statement to increase the salary of employees under the department 40, 90 and 110 according
-- to the company rules that, salary will be increased by 25% for the department 40, 15% for department 90 and 10%
-- for the department 110 and the rest of the departments will remain same.

UPDATE employees
SET salary = CASE department_id
    WHEN 40 THEN salary * 1.25
    WHEN 90 THEN salary * 1.15
    WHEN 110 THEN salary * 1.10
    ELSE salary
END
WHERE department_id < 110;


-- 9.