-- Q1: List the employee number, last name, first name, sex, and salary of each employee.
SELECT employee.emp_no, last_name, first_name, sex, salary
FROM employee
INNER JOIN salary
ON employee.emp_no = salary.emp_no;


-- Q2: List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employee
WHERE extract(year from hire_date) = 1986;


-- Q3: List the manager of each department along with their department number, department name, employee number,
--	   last name, and first name using SUBQUERY and JOIN
SELECT dept_no, dept_name, employee.emp_no, last_name, first_name
FROM employee
INNER JOIN (
	SELECT dept_no,
		(SELECT dept_name
		FROM department
		WHERE dept_manager.dept_no = department.dept_no
		), emp_no
	FROM dept_manager
) As dept
ON employee.emp_no = dept.emp_no;


-- Q4: List the department number for each employee along with that employee's employee number, last name,
--	   first name, and department name using JOINS
SELECT department.dept_no, employee.emp_no, last_name, first_name, dept_name
FROM (dept_employee
	  INNER JOIN employee
	  ON dept_employee.emp_no = employee.emp_no
) INNER JOIN department
ON dept_employee.dept_no = department.dept_no;


-- Q5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name
--	   begins with the letter B.
SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules'
	And last_name LIKE 'B%';
	

-- Q6: List each employee in the Sales department, including their employee number, last name, and first name
SELECT dept_name, employee.emp_no, last_name, first_name
FROM (dept_employee
	  INNER JOIN employee
	  ON dept_employee.emp_no = employee.emp_no
) INNER JOIN department
ON dept_employee.dept_no = department.dept_no
WHERE dept_name = 'Sales';


-- Q7: List each employee in the Sales and Development departments, including their employee number, last name,
--	   first name, and department name.
SELECT dept_name, employee.emp_no, last_name, first_name
FROM (dept_employee
	  INNER JOIN employee
	  ON dept_employee.emp_no = employee.emp_no
) INNER JOIN department
ON dept_employee.dept_no = department.dept_no
WHERE dept_name IN ('Sales', 'Development');


-- Q8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees
--	   share each last name).
SELECT last_name, Count(last_name) AS "frequency"
FROM employee
GROUP BY last_name
ORDER BY frequency DESC;