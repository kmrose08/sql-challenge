-- employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, last_name, first_name, sex
FROM employees
JOIN salaries
ON (employees.emp_no = salaries.emp_no)

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
RIGHT JOIN salaries ON employees.emp_no=salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.



