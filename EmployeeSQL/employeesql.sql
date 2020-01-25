-- 1.
SELECT e.emp_no AS "employee number", e.last_name AS "last name", e.first_name AS "first name", e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON s.emp_no = e.emp_no;

-- 2.
SELECT *
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01';

-- 3.
SELECT dm.dept_no AS "department number", ds.dept_name AS "department name", dm.emp_no AS "manager employee number", es.last_name AS "last name", es.first_name AS "first name", dm.from_date AS "start employment date", dm.to_date AS "end employment date"
FROM dept_manager AS dm
INNER JOIN departments AS ds
ON ds.dept_no = dm.dept_no
INNER JOIN employees AS es
ON es.emp_no = dm.emp_no;

-- 4.
SELECT e.emp_no AS "employee number", e.last_name AS "last name", e.first_name AS "first name", d.dept_name AS "department name"
FROM employees AS e
INNER JOIN dept_emp de
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no;

-- 5.
SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6.
SELECT e.emp_no AS "employee number", e.last_name AS "last name", e.first_name AS "first name", d.dept_name AS "department name"
FROM employees e
INNER JOIN dept_emp de
ON de.emp_no = e.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

-- 7.
SELECT e.emp_no AS "employee number", e.last_name AS "last name", e.first_name AS "first name", d.dept_name AS "department name"
FROM employees e
INNER JOIN dept_emp de
ON de.emp_no = e.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

-- 8.
SELECT last_name, COUNT(last_name) AS "frequency count of last name"
FROM employees
GROUP BY last_name
ORDER BY "frequency count of last name" DESC;

-- Epilogue
SELECT *
FROM employees
WHERE emp_no = 499942;
