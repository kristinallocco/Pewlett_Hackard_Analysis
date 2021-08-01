--Create table for retirement titles
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.title,
       t.from_date,
       t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;

--Check the table
SELECT * FROM retirement_titles;

--Remove duplicates
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY emp_no ASC, to_date DESC;

--Check the table
SELECT * FROM unique_titles;

--Retiree titles
SELECT COUNT(ut.emp_no),ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;

SELECT*FROM retiring_titles;

--Mentorship Eligibility
SELECT DISTINCT ON(e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentor_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

SELECT * FROM mentor_eligibility 

SELECT COUNT (DISTINCT emp_no)
FROM mentor_eligibility
--1549 eligible mentors

--Titles by eligibility
SELECT COUNT(me.emp_no),me.title
INTO eligible_titles
FROM mentor_eligibility as me
GROUP BY title 
ORDER BY COUNT(title) DESC;

SELECT * FROM eligible_titles