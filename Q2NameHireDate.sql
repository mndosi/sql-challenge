SELECT	emp.last_name,
        emp.first_name,
        emp.hire_date 
       
FROM public."Employee" as emp
	WHERE emp.hire_date BETWEEN '1986-01-01' AND '1986-12-31'
	Order by emp.hire_date;
	
