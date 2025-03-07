-- 1. List employee number, last name, first name, sex, and salary
CREATE VIEW employee_salaries_view AS
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

-- 2. Employees hired in 1986
CREATE VIEW employees_hired_1986_view AS
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- 3. Department managers with department and employee details
CREATE VIEW department_managers_view AS
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
JOIN departments d ON dm.dept_no = d.dept_no;

-- 4. Employee department details
CREATE VIEW employee_department_view AS
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no;

-- 5. Employees named "Hercules" whose last name starts with 'B'
CREATE VIEW employees_hercules_b_view AS
SELECT first_name, last_name, gender
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. Employees in the Sales department
CREATE VIEW sales_department_employees_view AS
SELECT e.emp_no, e.last_name, e.first_name
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7. Employees in Sales and Development departments
CREATE VIEW sales_development_employees_view AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- 8. Frequency count of last names (Descending Order)
CREATE VIEW employee_lastname_frequency_view AS
SELECT last_name, COUNT(*) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;
