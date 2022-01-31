--- List all employees
SELECT * FROM human_resources.employees;

--- List all employees from south building department
SELECT
	employee.employee_id,
	employee.first_name,
	employee.last_name,
	employee.hire_date,
	department.department_name,
	department.building
FROM human_resources.employees AS employee JOIN human_resources.departments AS department
	ON employee.department_id = department.department_id
WHERE department.building = 'South'
;