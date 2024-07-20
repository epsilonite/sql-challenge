-- Drop table if exists
DROP TABLE IF EXISTS dept_mng;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

-- Create tables
CREATE TABLE titles(
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(18) UNIQUE
);
SELECT * FROM titles;

CREATE TABLE employees(
    id INT PRIMARY KEY,
    title_id VARCHAR(5) NOT NULL,
    dob VARCHAR(10) NOT NULL,
    first_name VARCHAR(14) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date VARCHAR(10) NOT NULL,
    FOREIGN KEY (title) REFERENCES titles(title_id)
);
SELECT * FROM employees;

CREATE TABLE salaries(
    id INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (id) REFERENCES employees(id)
);
SELECT * FROM salaries;

CREATE TABLE departments(
    dept_id VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(18) UNIQUE
);
SELECT * FROM departments;

CREATE TABLE dept_emp(
    id INT NOT NULL,
    dept_id VARCHAR(4) NOT NULL,
    FOREIGN KEY (id) REFERENCES employees(id),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
SELECT * FROM dept_emp;

CREATE TABLE dept_mng(
    dept_id VARCHAR(4) NOT NULL,
    id INT NOT NULL,
    FOREIGN KEY (id) REFERENCES employees(id),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
SELECT * FROM dept_mng;