Select  emp_no, first_name, last_name,  dept_name
FROM dept_info
WHERE dept_name = 'Sales';

Select  emp_no, first_name, last_name,  dept_name
INTO dev_staff
FROM dept_info
WHERE dept_name = 'Development';

Select  emp_no, first_name, last_name,  dept_name
INTO sales_dev_staff
FROM dept_info
WHERE dept_name IN ('Sales', 'Development');

select * from sales_dev_staff;