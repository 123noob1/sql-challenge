-- Drop tables if rerunning this, starting with the ones with dependencies
DROP TABLE IF EXISTS Dept_Employee;
DROP TABLE IF EXISTS Dept_Manager;
DROP TABLE IF EXISTS Salary;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Title;
DROP TABLE IF EXISTS Department;

-- Set up unique tables to store data for each entity
CREATE TABLE Department (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Title (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(50) NOT NULL
);

CREATE TABLE Employee (
	emp_no INT PRIMARY KEY,
	title_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (title_id) REFERENCES Title (title_id),
	birth_date DATE NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(1) NULL,
	hire_date DATE NOT NULL
);

CREATE TABLE Salary (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employee (emp_no),
	PRIMARY KEY (emp_no),
	salary INT NOT NULL
);

-- Set up junction tables for the Department to Manger and Department to Employee
CREATE TABLE Dept_Manager (
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employee (emp_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE Dept_Employee (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employee (emp_no),
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
