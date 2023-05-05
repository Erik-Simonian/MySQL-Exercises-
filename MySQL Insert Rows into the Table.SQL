-- 1. Write a SQL statement to insert a record with your own value into the table countries against each columns.

CREATE TABLE IF NOT EXISTS countries (
    country_ID VARCHAR(3) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id INT DEFAULT NULL
);

INSERT INTO countries VALUES ('USA', 'United States of America', 840);

-- 2. Write a SQL statement to insert one row into the table countries against the column country_id and country_name.

CREATE TABLE IF NOT EXISTS countries (
    country_ID VARCHAR(3) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id INT DEFAULT NULL
);

INSERT INTO countries (countries.country_ID, countries.country_name) VALUES ('USA', 'United States of America');

-- 3. Write a SQL statement to create duplicate of countries table named country_new with all structure and data.

CREATE TABLE IF NOT EXISTS countries (
    country_ID VARCHAR(3) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id INT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS country_new
AS SELECT * FROM countries;


-- 4. Write a SQL statement to insert NULL values against region_id column for a row of countries table.

CREATE TABLE IF NOT EXISTS countries (
    country_ID VARCHAR(3) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id INT DEFAULT NULL
);

INSERT INTO countries(countries.country_ID, countries.country_name, countries.region_id)
VALUES ('USA', 'United States of America', NULL);


-- 5. Write a SQL statement to insert 3 rows by a single insert statement.

CREATE TABLE IF NOT EXISTS countries (
    country_ID VARCHAR(3) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id INT DEFAULT NULL
);

INSERT INTO countries VALUES ('USA', 'United States of America', 840),
                             ('CAN', 'Canada', 124),
                             ('RUS', 'Russian Federation', 643);


-- 6. Write a SQL statement insert rows from country_new table to countries table.

CREATE TABLE IF NOT EXISTS countries (
    country_ID   VARCHAR(3)  DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id    INT         DEFAULT NULL
);

INSERT INTO countries
SELECT * FROM country_new;


-- 7. Write a SQL statement to insert one row in jobs table to ensure
-- that no duplicate value will be entered in the job_id column.

CREATE TABLE IF NOT EXISTS jobs (
JOB_ID INT NOT NULL UNIQUE,
JOB_TITLE VARCHAR(35) NOT NULL,
MIN_SALARY DECIMAL(6,0) DEFAULT 8000,
MAX_SALARY DECIMAL(6,0) DEFAULT NULL
);

INSERT INTO jobs VALUES (001, 'Clerk', 10000, 35000);


-- 9. Write a SQL statement to insert a record into the table countries to ensure that,
-- a country_id and region_id combination will be entered once in the table.

CREATE TABLE IF NOT EXISTS countries (
    country_ID   VARCHAR(3)  NOT NULL,
    country_name VARCHAR(40) NOT NULL,
    region_id    INT         NOT NULL,
    PRIMARY KEY (country_ID, region_id)
);

INSERT INTO countries VALUES ('GER', 'Germany', 276);

-- 10. Write a SQL statement to insert rows into the table countries
-- in which the value of country_id column will be unique and auto incremented.

CREATE TABLE IF NOT EXISTS countries (
    country_ID   INT NOT NULL AUTO_INCREMENT,
    country_name VARCHAR(40) NOT NULL,
    region_id    INT         NOT NULL,
    PRIMARY KEY (country_ID)
);

INSERT INTO countries(countries.country_name, countries.region_id) VALUES  ('Spain', 724);

