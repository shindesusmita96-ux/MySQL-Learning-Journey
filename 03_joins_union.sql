#INNER JOINS
SELECT dem.employee_id, age, occupation, salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;
    
#OUTER JOINS - LEFT JOIN and RIGHT JOIN
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;

#SELF JOIN- joining the same table

SELECT emp1.employee_id,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
    ;
    
#Joining multiple tables together
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON pd.department_id = sal.dept_id
    ;
    
# UNION - combines rows data. Default is UNION DISTINCT (no duplicates)
# for duplicates- UNION ALL

SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender= 'Male'
UNION
SELECT first_name, last_name, 'Old Woman' AS Label
FROM employee_demographics
WHERE age > 40 AND gender= 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid' AS Label
FROM employee_salary
WHERE salary > 70000
;
