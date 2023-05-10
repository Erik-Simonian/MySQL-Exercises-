-- 1. Write a SQL statement to insert a record with your own value into the table countries against each columns.

CREATE TABLE IF NOT EXISTS countries (
    country_ID INT DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id VARCHAR(3) DEFAULT NULL
);

INSERT INTO countries VALUES (840, 'United States of America', 'USA');

-- 2. Write a SQL statement to insert one row into the table countries against the column country_id and country_name.

CREATE TABLE IF NOT EXISTS countries (
    country_ID INT DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id VARCHAR(3) DEFAULT NULL
);

INSERT INTO countries (countries.country_ID, countries.country_name) VALUES (840, 'United States of America');

-- 3. Write a SQL statement to create duplicate of countries table named country_new with all structure and data.

CREATE TABLE IF NOT EXISTS countries (
    country_ID INT DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id VARCHAR(3) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS country_new
AS SELECT * FROM countries;


-- 4. Write a SQL statement to insert NULL values against region_id column for a row of countries table.

CREATE TABLE IF NOT EXISTS countries (
    country_ID INT DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id VARCHAR(3) DEFAULT NULL
);

INSERT INTO countries(countries.country_ID, countries.country_name, countries.region_id)
VALUES (840, 'United States of America', NULL);


-- 5. Write a SQL statement to insert 3 rows by a single insert statement.

CREATE TABLE IF NOT EXISTS countries (
    country_ID INT DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id VARCHAR(3) DEFAULT NULL
);

INSERT INTO countries VALUES (840, 'United States of America', 'USA'),
                             (124, 'Canada', 'CAN'),
                             (643, 'Russian Federation', 'RUS');


-- 6. Write a SQL statement insert rows from country_new table to countries table.

CREATE TABLE IF NOT EXISTS countries (
    country_ID   INT  DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id    VARCHAR(3)         DEFAULT NULL
);

INSERT INTO countries
SELECT * FROM country_new;


-- 7. Write a SQL statement to insert one row in jobs table to ensure
-- that no duplicate value will be entered in the job_id column.

CREATE TABLE IF NOT EXISTS jobs (
    job_id INT NOT NULL UNIQUE,
    job_title VARCHAR(35) NOT NULL,
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);

INSERT INTO jobs VALUES (001, 'Clerk', 10000, 35000);


-- 8 Write a SQL statement to insert a record into the table countries to ensure that,
-- a country_id and region_id combination will be entered once in the table.

CREATE TABLE IF NOT EXISTS countries (
    country_ID   INT  NOT NULL,
    country_name VARCHAR(40) NOT NULL,
    region_id    VARCHAR(3)        NOT NULL,
    PRIMARY KEY (country_ID, region_id)
);

INSERT INTO countries VALUES (276, 'Germany', 'GER');

-- 9 Write a SQL statement to insert rows into the table countries
-- in which the value of country_id column will be unique and auto incremented.

CREATE TABLE IF NOT EXISTS countries (
    country_ID   INT NOT NULL AUTO_INCREMENT,
    country_name VARCHAR(40) NOT NULL,
    region_id    VARCHAR(3)        NOT NULL,
    PRIMARY KEY (country_ID)
);

INSERT INTO countries(countries.country_ID, countries.country_name) VALUES  (724, 'Spain');


-- 10. Write a SQL statement to insert records into the table countries to ensure that the country_id column
-- will not contain any duplicate data and this will be automatically incremented and the column country_name
-- will be filled up by 'N/A' if no value assigned for that column.

CREATE TABLE IF NOT EXISTS countries (
    country_ID   INT NOT NULL AUTO_INCREMENT,
    country_name VARCHAR(40) NOT NULL DEFAULT 'N/A',
    region_id    VARCHAR(3)        NOT NULL,
    PRIMARY KEY (country_ID)
);

INSERT INTO countries VALUES (764, 'Thailand', 'THA');


-- 11. Write a SQL statement to insert rows in the job_history table in which one column job_id is containing
-- those values which exist in job_id column of jobs table.

CREATE TABLE IF NOT EXISTS jobs (
    job_id INT NOT NULL UNIQUE,
    job_title VARCHAR(35) NOT NULL,
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);

INSERT INTO jobs(jobs.job_id, jobs.job_title) VALUES (001, 'Clerk');
INSERT INTO jobs(jobs.job_id, jobs.job_title) VALUES (010, 'Manager');


CREATE TABLE IF NOT EXISTS job_history (
    employee_id integer NOT NULL,
    job_id integer NOT NULL,
    department_id integer DEFAULT NULL,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

INSERT INTO job_history VALUES (117, 001, 13);


-- 12. Write a SQL statement to insert rows into the table employees in which a set of columns department_id
-- and manager_id contains a unique value and that combined values must have exists into the table departments.

CREATE TABLE IF NOT EXISTS departments (
    department_id INT UNIQUE NOT NULL,
    department_name VARCHAR(20) NOT NULL,
    manager_id INT NOT NULL,
    location_id INT DEFAULT NULL,
    PRIMARY KEY (department_id, manager_id)
);

INSERT INTO departments VALUES (01, 'Corporate', 101, 15);
INSERT INTO departments VALUES (03, 'Marketing', 301, 17);
INSERT INTO departments VALUES (05, 'R&D',501, 11);
INSERT INTO departments VALUES (10, 'Security', 1001, 02);


CREATE TABLE IF NOT EXISTS employees (
    employee_id    INT         NOT NULL,
    first_name     VARCHAR(20) DEFAULT NULL,
    last_name      VARCHAR(25) DEFAULT NULL,
    email          VARCHAR(25) DEFAULT NULL,
    phone_number   VARCHAR(25) DEFAULT NULL,
    hire_date      DATE,
    job_id         VARCHAR(10) NOT NULL,
    salary         INT         DEFAULT NULL,
    commission_pct INT         DEFAULT 0,
    manager_id     INT UNIQUE  DEFAULT NULL,
    department_id  INT UNIQUE  DEFAULT NULL,
    FOREIGN KEY (department_id, manager_id)
        REFERENCES departments(department_id, manager_id),
    PRIMARY KEY (employee_id)
);

INSERT INTO employees VALUES (115, 'William', 'Birkin', 'WillBir@rcity.com', NULL, '1998-09-23', 'Virologist', 350000,
                              DEFAULT, 501, 05);
INSERT INTO employees VALUES (37, 'HANK', NULL, NULL, NULL, '1996-01-01', 'Security',
                              NULL, DEFAULT, 1001,10);
