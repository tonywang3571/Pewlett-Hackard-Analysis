--Challenge--

-- Retrieve emp_no, first_name, last_name from Employees table
SELECT emp_no, first_name, last_name
FROM employees

-- Retrieve title, from_date, to_date from Titles table
SELECT title, from_date, to_date
FROM titles

-- Create new table and join both tables on primary key
SELECT e.emp_no, 
	e.first_name, 
	e.last_name, 
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Check to see if data was added
SELECT * FROM retirement_titles;

-- Use distinct on with Order by to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- Check to see if data was added correctly
SELECT * FROM unique_titles;

-- Retrieve number of employees for each title.
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;




