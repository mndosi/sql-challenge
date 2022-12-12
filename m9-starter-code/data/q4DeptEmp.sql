SELECT  dem.dept_no,
		emp.emp_no,
        emp.last_name,
        emp.first_name,
		dep.dept_name
FROM ((public."DepartmentEmployee" AS dem 
    INNER JOIN public."Employee" as emp
	ON dem.emp_no = emp.emp_no)
	INNER JOIN public."Departments" AS dep
	ON dem.dept_no = dep.dept_no)
	GROUP BY dem.dept_no, emp.emp_no, dep.dept_name;
