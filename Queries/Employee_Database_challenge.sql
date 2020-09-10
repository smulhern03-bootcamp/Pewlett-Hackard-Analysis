-- Select info and join tables
select e.emp_no, 
		e.first_name, 
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retirement_titles
from employees as e
INNER JOIN titles as t
	on (e.emp_no=t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

select emp_no, first_name, last_name, title
from retire_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, 
first_name, 
last_name, 
title
INTO unique_titles
FROM retire_titles
ORDER BY emp_no, to_date DESC;

--Get counts of employee titles.
Select Count (title), title
INTO retiring_titles
From unique_titles
GROUP BY title
ORDER BY count DESC;
