select * from Employee

Employee.emp_no, Employee.last_name, Employee.first_name, Employee.sex, Salaries.salary 
from Employee
INNER JOIN Salaries
On Salaries.emp_no=Employee.emp_no; 