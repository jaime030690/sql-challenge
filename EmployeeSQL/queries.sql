-- (1) 	List the following details of each employee: 
--		employee number, last name, first name, gender, and salary.

select emp.emp_no, last_name, first_name, gender, salary
from employees as emp
join salaries as sal
on emp.emp_no = sal.emp_no;

-- (2) 	List employees who were hired in 1986.

select emp_no, last_name, first_name, hire_date 
from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- (3) 	List the manager of each department with the following information: 
-- 		department number, department name, the manager's employee number, 
-- 		last name, first name, and start and end employment dates.

select dep.dept_no, dept_name, emp.emp_no, last_name, first_name, from_date, to_date
from departments as dep
join dept_manager as man
on dep.dept_no = man.dept_no
join employees as emp
on man.emp_no = emp.emp_no;

-- (4)	List the department of each employee with the following information: 
--		employee number, last name, first name, and department name.

select emp.emp_no, last_name, first_name, dept_name
from employees as emp
join dept_emp as de
on emp.emp_no = de.emp_no
join departments as dep
on de.dept_no = dep.dept_no;

-- (5)	List all employees whose first name is "Hercules" and last names begin with "B."
select last_name, first_name
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- (6)	List all employees in the Sales department, including their employee number, 
--		last name, first name, and department name.

-- (7)	List all employees in the Sales and Development departments, including 
--		their employee number, last name, first name, and department name.

-- (8)	In descending order, list the frequency count of employee last names, i.e., 
--		how many employees share each last name.