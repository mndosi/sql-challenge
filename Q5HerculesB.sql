SELECT 	emp.last_name,
        emp.first_name,
        emp.sex
FROM public."Employee" as emp
    WHERE emp.first_name = 'Hercules'
	AND emp.last_name LIKE 'B_%';