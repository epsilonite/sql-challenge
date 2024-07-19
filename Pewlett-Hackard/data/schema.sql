DROP TABLE employees IF EXISTS;
DROP TABLE titles IF EXISTS;
DROP TABLE salaries IF EXISTS;
DROP TABLE departments IF EXISTS;
DROP TABLE dept_emp IF EXISTS;
DROP TABLE dept_mng IF EXISTS;

CREATE TABLE employees(
    id INT,
    title_id VARCHAR(5),
    dob VARCHAR(10),
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    sex VARCHAR(1),
    hire_date VARCHAR(10)
); 
SELECT * FROM employees;

CREATE TABLE titles(
    title_id VARCHAR(5),
    title VARCHAR(18)
);
SELECT * FROM titles;

CREATE TABLE salaries(
    id INT,
    salary INT
);
SELECT * FROM salaries;

CREATE TABLE departments(
    dept_id VARCHAR(4),
    dept_name VARCHAR(18)
);
SELECT * FROM departments;

CREATE TABLE dept_emp(
    id INT,
    dept_id VARCHAR(4)
);
SELECT * FROM dept_emp;

CREATE TABLE dept_mng(
    dept_id VARCHAR(4),
    id INT
);
SELECT * FROM dept_mng;