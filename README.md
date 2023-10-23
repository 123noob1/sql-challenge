# sql-challenge
Week 9 Module 9 Challenge from Boot Camp.

For this challenge, (1) design tables to hold data from the CSV files, (2) import the CSV files into a SQL database, and then (3) write different queries to answer the following questions:
1) List the employee number, last name, first name, sex, and salary of each employee.
2) List the first name, last name, and hire date for the employees who were hired in 1986.
3) List the manager of each department along with their department number, department name, employee number, last name, and first name.
4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6) List each employee in the Sales department, including their employee number, last name, and first name.
7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Instructions
### Creating employees_db and tables:
Create a new database named <code>employees_db</code> then open and run the <code>employee_schema.sql</code> to create the following tables:
- department
- title
- employee
- dept_employee
- dept_manager
- salary

### Importing:
Start by importing the <code>csv</code> files that do not have any dependencies in the following order:
1) <code>departments.csv</code> to <code>department</code> table
2) <code>titles.csv</code> to <code>title</code> table
3) <code>employees.csv</code> to <code>employee</code> table

Once the above files have been imported, the following <code>csv</code> files can be imported into their tables in any order:
- <code>dept_emp.csv</code> to <code>dept_employee</code> table
- <code>dept_manager.csv</code> to <code>dept_manager</code> table
- <code>salaries.csv</code> to <code>salary</code> table

### Querying:
Open and run each query for each question from the <code>analysis_queries.sql</code> file. Outputs of each queries are saved under the <code>employee_analysis</code> folder.

## Folder Description
- <code>employee_analysis</code> - contains the csv outputs for each of the data analysis requirements
- <code>employee_schema</code> - contains the Entity Relationship Diagram (ERD) for the database created for this challenge (ERD developed using <a href='https://www.quickdatabasediagrams.com/'>Quick DBD</a>)
- <code>employee_sql</code> - contains the schema.sql and analysis_queries.sql files
- <code>resources</code> - contains all the raw csv files used for importing