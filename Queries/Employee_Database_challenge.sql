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
