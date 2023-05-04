-- 1. Write a SQL statement to insert a record with your own value into the table countries against each columns.

CREATE TABLE IF NOT EXISTS countries (
    country_ID VARCHAR(3) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id DECIMAL(10, 0) DEFAULT NULL
);

INSERT INTO countries VALUES ('USA', 'United States of America', 840);

-- 2. Write a SQL statement to insert one row into the table countries against the column country_id and country_name.

CREATE TABLE IF NOT EXISTS countries (
    country_ID VARCHAR(3) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id DECIMAL(10, 0) DEFAULT NULL
);

INSERT INTO countries (countries.country_ID, countries.country_name) VALUES ('USA', 'United States of America');

-- 3. Write a SQL statement to create duplicate of countries table named country_new with all structure and data.

CREATE TABLE IF NOT EXISTS countries (
    country_ID VARCHAR(3) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id DECIMAL(10, 0) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS country_new
AS SELECT * FROM countries;


-- 4. Write a SQL statement to insert NULL values against region_id column for a row of countries table.

CREATE TABLE IF NOT EXISTS countries (
    country_ID VARCHAR(3) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id DECIMAL(10, 0) DEFAULT NULL
);

INSERT INTO countries(countries.country_ID, countries.country_name, countries.region_id)
VALUES ('USA', 'United States of America', NULL);


-- 5. Write a SQL statement to insert 3 rows by a single insert statement.

CREATE TABLE IF NOT EXISTS countries (
    country_ID VARCHAR(3) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id DECIMAL(10, 0) DEFAULT NULL
);

INSERT INTO countries VALUES ('USA', 'United States of America', 840),
                             ('CAN', 'Canada', 124),
                             ('RUS', 'Russian Federation', 643);