-- Drop relational tables in order if exists
DROP TABLE IF EXISTS dept_mng;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

-- Create relational tables in order
-- Create titles table (no ref)
CREATE TABLE titles(
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(18) UNIQUE
);
-- Verify table
SELECT * FROM titles;

-- Create employees table (ref titles)
CREATE TABLE employees(
    id INT PRIMARY KEY,
    title_id VARCHAR(5) NOT NULL,
    dob VARCHAR(10) NOT NULL,
    first_name VARCHAR(14) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date VARCHAR(10) NOT NULL,
    FOREIGN KEY (title_id) REFERENCES titles(title_id)
);
-- Verify table
SELECT * FROM employees;

-- Create salaries table (ref employees)
CREATE TABLE salaries(
    id INT PRIMARY KEY REFERENCES employees,
    salary INT NOT NULL
);
-- Verify table
SELECT * FROM salaries;

-- Create departments table (no ref)
CREATE TABLE departments(
    dept_id VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(18) UNIQUE
);
-- Verify table
SELECT * FROM departments;

-- Create dept_emp table (ref employess, departments)
CREATE TABLE dept_emp(
    id INT NOT NULL,
    dept_id VARCHAR(4) NOT NULL,
    FOREIGN KEY (id) REFERENCES employees(id),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
    PRIMARY KEY (id, dept_id)
);
-- Verify table
SELECT * FROM dept_emp;

-- Create dept_mng table (ref employess, departments)
CREATE TABLE dept_mng(
    dept_id VARCHAR(4) NOT NULL,
    id INT NOT NULL,
    FOREIGN KEY (id) REFERENCES employees(id),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
    PRIMARY KEY (dept_id, id)
);
-- Verify table
SELECT * FROM dept_mng;