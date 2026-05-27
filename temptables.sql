# Temporary Tables

CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50), 
last_name varchar(50), 
favourite_food varchar(50)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES( 'Taylor', 'Swift', 'Burgers');

SELECT *
FROM temp_table;

#Another way to create temp tables

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k
