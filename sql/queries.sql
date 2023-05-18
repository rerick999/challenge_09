

select
e.emp_no
,e.last_name
,e.first_name
,e.sex
,s.salary
from employees e
join salaries s on e.emp_no=s.emp_no
;


select
e.first_name
,e.last_name
,e.hire_date
from employees e
where
e.hire_date between '1986-01-01' and '1986-12-31'
;


select
dm.dept_no department_number
,d.dept_name department_name
,dm.emp_no employee_number
,e.last_name manager_last_name
,e.first_name manager_first_name
from dept_manager dm
join employees e on e.emp_no=dm.emp_no
join departments d on d.dept_no=dm.dept_no
;

select
de.dept_no department_number
,de.emp_no employee_number
,e.last_name manager_last_name
,e.first_name manager_first_name
,d.dept_name department_name
from employees e
join dept_emp de on de.emp_no=e.emp_no
join departments d on d.dept_no=de.dept_no
;

select
e.first_name
,e.last_name
,e.sex
from employees e
where e.first_name='Hercules'
and e.last_name like 'B%'
;

select
d.dept_name
,e.emp_no
,e.last_name
,e.first_name
from employees e
join dept_emp de on de.emp_no=e.emp_no
join departments d on d.dept_no=de.dept_no
where d.dept_name in ('Sales','Development')
;

select
e.last_name
,count(*)
from employees e
group by
e.last_name
order by 2 desc
;

