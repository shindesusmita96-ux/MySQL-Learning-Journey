# String Functions

SELECT first_name, LENGTH(first_name) AS 'No. of Characters'
FROM employee_demographics
ORDER BY 2
;

SELECT first_name, UPPER(first_name), LOWER(first_name)
FROM employee_salary;

SELECT LTRIM(       'playhouse');

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4)
FROM employee_demographics;

SELECT first_name, last_name, birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'A', 'Z')
FROM employee_demographics;

SELECT first_name, LOCATE('nn', first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name ,' ', last_name)
FROM employee_demographics;