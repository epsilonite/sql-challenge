--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.id, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries AS s ON e.id=s.id;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees WHERE RIGHT(hire_date,4)='1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_id, d.DEPT_name, e.id, e.last_name, e.first_name
FROM dept_mng AS dm
JOIN departments AS d ON dm.dept_id=d.dept_id
JOIN employees AS e ON dm.id=e.id;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_id, de.id, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de 
JOIN employees AS e ON de.id=e.id
JOIN departments AS d ON de.dept_id=d.dept_id;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees WHERE first_name='Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT de.id, e.last_name, e.first_name
FROM dept_emp as de
JOIN employees as e ON de.id=e.id
WHERE de.dept_id='d007';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.id, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN employees as e ON de.id=e.id
JOIN departments as d ON de.dept_id=d.dept_id
WHERE d.dept_name='Sales' OR d.dept_name='Development';


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT (last_name) 
FROM employees 
GROUP BY last_name
ORDER BY COUNT DES;