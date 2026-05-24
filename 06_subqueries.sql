# Subqueries (in WHERE and SELECT FROM)

SELECT *
FROM employee_demographics
WHERE employee_id IN 
		(SELECT employee_id
        FROM employee_salary
        WHERE dept_id = 1);
        
SELECT first_name, salary,
		(SELECT AVG(salary)
        FROM employee_salary)
FROM employee_salary;

SELECT AVG(max_age)
FROM (SELECT gender, MIN(age) min_age, MAX(age) max_age, COUNT(age) count_age ,AVG(age) avg_age
FROM employee_demographics
GROUP BY gender) AS Aggregate_Table
;
