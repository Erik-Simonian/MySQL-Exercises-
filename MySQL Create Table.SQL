-- 1. Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id.

CREATE TABLE countries (
    country_id VARCHAR(3),
    country_name VARCHAR(30),
    region_id DECIMAL (10,0)
);


-- 2. Write a SQL statement to create a simple table countries
-- including columns country_id,country_name and region_id which is already exists.

CREATE TABLE IF NOT EXISTS countries (
    country_id   VARCHAR(3),
    country_name VARCHAR(30),
    region_id    DECIMAL(10,0)
);


-- 3. Write a SQL statement to create the structure of a table dup_countries similar to countries.

CREATE TABLE IF NOT EXISTS dup_countries LIKE countries;


-- 4. Write a SQL statement to create a duplicate copy of countries table
-- including structure and data by name dup_countries.

CREATE TABLE IF NOT EXISTS dup_countries
AS SELECT * FROM countries;


-- 5. Write a SQL statement to create a table countries set a constraint NULL.

CREATE TABLE IF NOT EXISTS countries(
    country_id VARCHAR(3) NOT NULL,
    country_name VARCHAR(30) NOT NULL,
    region_id DECIMAL (10,0) NOT NULL
);


-- 6. Write a SQL statement to create a table named jobs
-- including columns job_id, job_title, min_salary, max_salary
-- and check whether the max_salary amount exceeding the upper limit 25000.

CREATE TABLE IF NOT EXISTS jobs (
    job_id INT NOT NULL,
    job_title VARCHAR(30) NOT NULL,
    min_salary INT,
    max_salary INT,
    CHECK (max_salary <= 2500)
);


-- 7. Write a SQL statement to create a table named countries
-- including columns country_id, country_name and region_id
-- and make sure that no countries except Italy, India and China will be entered in the table.

CREATE TABLE IF NOT EXISTS countries(
    country_id VARCHAR(3) NOT NULL,
    country_name VARCHAR(30) NOT NULL,
    CHECK (country_name IN ('Italy', 'India', 'China')),
    region_id DECIMAL (10,0) NOT NULL
);


-- 8. Write a SQL statement to create a table named job_history including columns employee_id,
-- start_date, end_date, job_id and department_id and make sure
-- that the value against column end_date will be entered at the time of insertion to the format like '--/--/----'.

CREATE TABLE IF NOT EXISTS job_history (
    employee_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
    CHECK ( end_date LIKE '--/--/----'),
    job_id VARCHAR(20) NOT NULL,
    department_id INT NOT NULL
);


-- 9. Write a SQL statement to create a table named countries including columns country_id,country_name and region_id
 -- and make sure that no duplicate data against column country_id will be allowed at the time of insertion.

CREATE TABLE IF NOT EXISTS countries (
    country_id VARCHAR(3) NOT NULL,
    country_name VARCHAR(60) NOT NULL,
    region_id  DECIMAL (10, 0) NOT NULL,
    UNIQUE (country_id)
);


-- 10. Write a SQL statement to create a table named jobs including columns job_id, job_title,
-- min_salary and max_salary, and make sure that, the default value for job_title is blank and min_salary is 8000
-- and max_salary is NULL will be entered automatically at the time of insertion
-- if no value assigned for the specified columns.

CREATE TABLE IF NOT EXISTS jobs (
    job_id     VARCHAR(20) NOT NULL,
    job_title  VARCHAR(20) NOT NULL DEFAULT ' ',
    min_salary INT DEFAULT 8000,
    max_salary INT DEFAULT NULL,
    UNIQUE (job_id)
);


-- 11. Write a SQL statement to create a table named countries including columns country_id,
-- country_name and region_id and make sure that the country_id column will be a key field
-- which will not contain any duplicate data at the time of insertion.

CREATE TABLE IF NOT EXISTS countries (
    country_id VARCHAR(3) UNIQUE NOT NULL,
    country_name VARCHAR(60) NOT NULL,
    region_id  DECIMAL (10, 0) NOT NULL,
    PRIMARY KEY (country_id)
);


-- 12. Write a SQL statement to create a table countries including columns country_id,
-- country_name and region_id and make sure that the column country_id will be unique
-- and store an auto incremented value.

CREATE TABLE IF NOT EXISTS counties (
    country_id VARCHAR(3) UNIQUE NOT NULL AUTO_INCREMENT,
    country_name VARCHAR(60) NOT NULL,
    region_id  DECIMAL (10, 0) NOT NULL,
    PRIMARY KEY (country_id)
);


-- 13. Write a SQL statement to create a table countries including columns country_id,
-- country_name and region_id and make sure that the combination of columns country_id and region_id will be unique.

CREATE TABLE IF NOT EXISTS counties (
    country_id VARCHAR(3) UNIQUE NOT NULL DEFAULT '',
    country_name VARCHAR(60) DEFAULT NULL,
    region_id  DECIMAL (10, 0) NOT NULL,
    PRIMARY KEY (country_id, region_id)
);


-- 14. Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date,
-- job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time
-- of insertion and the foreign key column job_id contain only those values which are exists in the jobs table.

CREATE TABLE IF NOT EXISTS job_history (
    employee_id INT PRIMARY KEY NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    job_id VARCHAR(20) NOT NULL,
    department_id INT DEFAULT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);


-- 15. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name,
-- email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that,
-- the employee_id column does not contain any duplicate value at the time of insertion and the foreign key columns
-- combined by department_id and manager_id columns contain only those unique combination values,
-- which combinations are exists in the departments table.

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT UNIQUE NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(40) NOT NULL,
    phone_number VARCHAR(20) DEFAULT NULL,
    hire_date DATE NOT NULL,
    job_id VARCHAR(20) NOT NULL,
    salary INT DEFAULT NULL,
    commission decimal (2, 2) DEFAULT NULL,
    manager_id INT DEFAULT NULL,
    department_id INT DEFAULT NULL,
    FOREIGN KEY (department_id, manager_id) REFERENCES departments(department_id, manager_id)
);
