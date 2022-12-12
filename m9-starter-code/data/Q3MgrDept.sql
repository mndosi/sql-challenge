SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
		dm.dept_no,
		dep.dept_name
FROM ((public."Employee" as emp
    INNER JOIN public."DepartmentManager" AS dm 
	ON emp.emp_no = dm.emp_no)
	INNER JOIN public."Departments" AS dep
	ON dm.dept_no = dep.dept_no)
	ORDER BY emp.emp_no;