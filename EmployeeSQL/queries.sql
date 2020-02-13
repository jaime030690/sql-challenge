-- (1) 	List the following details of each employee: 
--		employee number, last name, first name, gender, and salary.
select emp.emp_no, last_name, first_name, gender, salary
from employees as emp
join salaries as sal
on emp.emp_no = sal.emp_no;

-- (2) 	List employees who were hired in 1986.
select emp_no, last_name, first_name, hire_date 
from employees
where hire_date between '1986-01-01' and '1986-12-13';

-- (3) 	List the manager of each department with the following information: 
-- 		department number, department name, the manager's employee number, 
-- 		last name, first name, and start and end employment dates.
select dep.dept_no, dept_name
from departments as dep
join dept_manager as man
on dep.dept_no = man.dept_no;