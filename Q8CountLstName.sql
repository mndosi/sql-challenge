SELECT COUNT(emp.last_name), emp.last_name
FROM public."Employee" as emp
	group by emp.last_name
	order by COUNT(emp.last_name) desc;