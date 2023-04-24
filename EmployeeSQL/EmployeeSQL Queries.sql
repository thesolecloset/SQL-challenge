
--Data Analysis

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries
on employees.emp_no = salaries.emp_no
order by emp_no;

select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date <= '12-31-1986' and hire_date >= '01-01-1986'
order by hire_date;

select dept_manager.emp_no, departments.dept_no, departments.dept_name, employees.first_name, employees.last_name
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees
on dept_manager.emp_no = employees.emp_no
order by emp_no;

select dept_emp.emp_no, departments.dept_name, employees.first_name, employees.last_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
order by emp_no;

select employees.first_name, employees.last_name, employees.sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

select dept_emp.emp_no, departments.dept_name, employees.first_name, employees.last_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales'
order by emp_no;

select dept_emp.emp_no, departments.dept_name, employees.first_name, employees.last_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development'
order by emp_no;

select employees.last_name,
count(last_name) as employeecount
from employees
group by last_name
order by employeecount DESC;
















