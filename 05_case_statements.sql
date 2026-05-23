#Case Statements

SELECT first_name, last_name, age,
CASE 
	WHEN age <= 30 THEN 'Young'
	WHEN age BETWEEN 31 and 50 THEN 'Middle-Aged'
	WHEN age >= 50 THEN 'Old'
END AS age_bracket
FROM employee_demographics;

# Pay increase and Bonus
# If less than 50k, 5% increase, if more than 50k, 7% increase
# If Finance department, 10% bonus
SELECT *
FROM employee_demographics;

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN (salary*0.05) + salary
    WHEN salary > 50000 THEN (salary*0.07) + salary
    WHEN dept_id = 6 THEN (salary*0.1) + salary
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN (salary*0.1)
END AS bonus
FROM employee_salary;