--Begin code for Deliverable 1:

--Creating table for retirements by titles
select e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
into retirement_titles
from employees as e
inner join titles as t
on (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;


--Creating table for unique titles for retirement
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_tables
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

--Creating table for retiring titles

select count(emp_no), title
into retiring_titles
from unique_titles
group by title
order by count desc;

--End code for Deliverable 1

--Begin code for Deliverable 2
select distinct on (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
de.from_date,
de.to_date,
t.title
into mentor_eligibility
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
left join titles as t
on (e.emp_no = t.emp_no)
where (de.to_date = '9999-01-01')
and (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by e.emp_no;

--End code for Deliverable 2