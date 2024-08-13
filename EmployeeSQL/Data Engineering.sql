-- Create the table
CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

-- Drop the table if it exists
DROP TABLE IF EXISTS employees;

-- Create the table
CREATE TABLE employees (
    emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(100) NOT NULL,
    hire_date DATE DEFAULT CURRENT_DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) References titles(title_id)
);
-- Create the table
CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL(10),
    emp_no  VARCHAR NOT NULL(10),
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY (dept_no) References departments(dept_no),
	FOREIGN KEY (emp_no) References employees(emp_no)
);

-- Create the table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_no) References employees(emp_no)
);

-- Create the table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
    PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY (dept_no) References departments(dept_no),
	FOREIGN KEY (emp_no) References employees(emp_no)
);

-- Create the table
	CREATE TABLE departments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);