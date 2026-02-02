SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
 last_name, 
 birth_date, 
 age,
 age+10
FROM parks_and_recreation.employee_demographics;

#order of opreations for math within mySQL is PEMDAS: Parentheses, Exponent, Multiplication, Division, Addition, Subtraction


SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;