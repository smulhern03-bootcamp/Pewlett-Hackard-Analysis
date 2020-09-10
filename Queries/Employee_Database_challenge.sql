-- Select info and join tables
select e.emp_no, 
		e.first_name, 
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retire_titles
from employees as e
INNER JOIN titles as t
	on (e.emp_no=t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, 
first_name, 
last_name, 
title
INTO retire_titles_edited
FROM retire_titles
ORDER BY emp_no, to_date DESC;

--Get counts of each employee title.
Select Count (title), title
INTO retiring_titles
From unique_titles
GROUP BY title
ORDER BY count DESC;
