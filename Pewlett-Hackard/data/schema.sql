DROP TABLE employees IF EXISTS;
DROP TABLE titles IF EXISTS;
DROP TABLE salaries IF EXISTS;
DROP TABLE departments IF EXISTS;
DROP TABLE dept_employees IF EXISTS;
DROP TABLE dept_managers IF EXISTS;

CREATE TABLE employees(
    id INT,
    title_id VARCHAR(5),
    dob VARCHAR(10),
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    sex VARCHAR(1),
    hire_date VARCHAR(10)
);

CREATE TABLE titles(
    title_id VARCHAR(5),
    title VARCHAR(18)
);

CREATE TABLE salaries(
    id INT,
    salary INT
);

CREATE TABLE departments(
    dept_id VARCHAR(4),
    dept_name VARCHAR(18)
);

CREATE TABLE dept_emp(
    id INT,
    dept_id INT
);

CREATE TABLE dept_mng(
    dept_id VARCHAR(4),
    id INT
);