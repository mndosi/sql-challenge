SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        emp.sex,
        sal.salary
FROM public."Employee" as emp
    LEFT JOIN public."Salaries" as sal
    ON (emp.emp_no = sal.emp_no)
ORDER BY sal.salary desc, emp.sex

