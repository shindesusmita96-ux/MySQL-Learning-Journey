SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie'
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1986-01-01'
AND gender = 'Male'
;
#Logical Operators : AND OR NOT

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1986-01-01'
OR gender != 'Male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age>50;

-- like statement
-- % or _
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A%'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A__';
