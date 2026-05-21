SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
(age+10)*10
FROM parks_and_recreation.employee_demographics;

#PEMDAS- parenthesis, exponent, multiplication, division, addition, subtraction
#This is the order of arithmetic operations in MySQL

SELECT DISTINCT first_name,gender
FROM parks_and_recreation.employee_demographics;
#DISTINCT in single column returns every unique value in that column (eg. gender column has two unique values- male and female)
#DISTINCT in multiple columns evaluates the combinations of the values in the two columns

#WHERE cluase is used to filter data based on specific conditions
SELECT *
FROM employee_salary
WHERE salary>=60000
;

#Logical operators: AND, OR, NOT
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date> '1985-01-01'
OR NOT gender='Female'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'April' AND age = 29) OR age>=40 
;

#LIKE statement helps indentify patterns in the data
# % and _, where % means any number of characters after the statement and _ means exactly one character after
#This is for string matching. The % and _ can be combined as well
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%es%'
;
