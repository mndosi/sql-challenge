SELECT  dep.dept_name,
		emp.emp_no,
        emp.last_name,
        emp.first_name
FROM ((public."Departments" AS dep 
	INNER JOIN public."DepartmentEmployee" AS dem
	ON dep.dept_no = dem.dept_no)
	INNER JOIN public."Employee" as emp
	ON dem.emp_no = emp.emp_no)
	WHERE dep.dept_name in ('Sales', 'Development')
	GROUP BY dep.dept_name, emp.emp_no;