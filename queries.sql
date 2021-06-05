Create table dept_emp (
emp_no INT NOT Null,
dept_no VARCHAR not null,
	from_date DATE not null,
	to_date DATE not null
);
select * from dept_manager;
drop table dept_manager;
create table dept_manager (
dept_no VARCHAR not null,
	emp_no INT not null,
	from_date DATE not null,
	to_date DATE not null
);
select * from dept_manager;
select * from titles;
drop table titles;

create table titles (
emp_no INT not null,
	title VARCHAR not null,
	from_date DATE not null,
	to_date DATE not null
);

select first_name, last_name
FROM employees
where birth_date between '1952-01-01' and '1955-12-31';

select first_name, last_name
from employees
where birth_date between '1952-01-01' and '1952-12-31';

select first_name, last_name
from employees
where birth_date between '1953-01-01' and '1953-12-31';

select first_name, last_name
from employees
where birth_date between '1954-01-01' and '1954-12-31';

select first_name, last_name
from employees
where birth_date between '1955-01-01' and '1955-12-31';

--Retirement eligibility (count)
select count(first_name)
from employees
where (birth_date between '1952-01-01' and '1955-12-31') 
and (hire_date between '1985-01-01' and '1988-12-31');

--Retirement elibility (export)
select first_name, last_name
into retirement_info
from employees
where (birth_date between '1952-01-01' and '1955-12-31')
and (hire_date between '1985-01-01' and '1988-12-31');

--Checking results
select * from retirement_info;
