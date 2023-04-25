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


