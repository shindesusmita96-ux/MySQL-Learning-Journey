# GROUP BY groups data values in columns together so that aggregate functions can be performed
SELECT gender, AVG(age), MIN(age), MAX(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

#ORDER BY sorts data by ASC or DESC
SELECT *
FROM employee_demographics
ORDER BY gender, age
;

#HAVING clause was created to filter after GROUP BY as the WHERE clause cannot, to filter aggregated columns
SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age>40
;

SELECT *
FROM employee_demographics
LIMIT 5
;