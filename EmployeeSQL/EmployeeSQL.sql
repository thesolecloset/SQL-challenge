DROP TABLE If Exists SQL;
SELECT * FROM SQL;

DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;

CREATE TABLE titles (primary key (title_id), title_id VARCHAR(20), title VARCHAR(20));
CREATE TABLE salaries (emp_no int, salary INT);
CREATE TABLE departments (primary key (dept_no), dept_no varchar(20), dept_name varchar(20));

CREATE TABLE dept_emp (emp_no int, dept_no varchar(20), 
					   foreign key (dept_no) references departments(dept_no));
CREATE TABLE employees (emp_no int,
						emp_title_id VARCHAR(20), 
						birth_date date, first_name varchar(20), 
						last_name varchar(20), 
						sex varchar(10), 
						hire_date date, foreign key (emp_title_id) references titles(title_id));
CREATE TABLE dept_manager (dept_no varchar(20), emp_no int, 
						   --foreign key (emp_no) references dept_emp(emp_no), 
						   foreign key (dept_no) references departments(dept_no));
						   

select * from titles;
select * from salaries;
select * from employees;
select * from dept_manager;
select * from dept_emp;
select * from departments;



