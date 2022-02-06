---------------------------------------------
-- Module 7 Challenge Deliverable 1
---------------------------------------------
-- Employees Table with no, first, last name
-- Title Table with title, from, to date
-- New table retirement_titles
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
ORDER by e.emp_no ASC;

-- Verify new table
SELECT * FROM retirement_titles;

-- Use Distinct to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, 
	rt.first_name,
	rt.last_name,
	rt.title 
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- Verify table 
SELECT * FROM unique_titles; 

-- Create count of retiring titles
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

-- Verify Table
SELECT * FROM retiring_titles; 

---------------------------------------------
-- Deliverable 2
---------------------------------------------
-- Create mentorship eligibility table filtering on birthdate and distinct on emp no
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   t.title
INTO mentorship_eligibilty
FROM employees as e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC, de.from_date DESC;

-- Verify Table
SELECT * FROM mentorship_eligibilty;

---------------------------------------
-- Deliverable 3
---------------------------------------
-- Create silver tsunami
SELECT COUNT(me.title), me.title
INTO mentee_counts
FROM mentorship_eligibilty AS me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;

-- Verify table
SELECT * FROM mentee_counts;

-- Narrow the list of retiring employees to a list of potential mentors by age of 35
SELECT DISTINCT ON (e.emp_no)e.emp_no, 
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO unique_mentors_list
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (t.from_date BETWEEN '1985-01-01' AND '1985-12-31')
ORDER by e.emp_no ASC, t.from_date DESC;

-- Check the counts are reduced
SELECT * FROM unique_mentors_list; 

-- Creates list of potential mentors by title
SELECT COUNT(um.title), um.title
INTO unique_mentor_count
FROM unique_mentors_list AS um
GROUP BY um.title
ORDER BY COUNT(um.title) DESC;

-- Returns smaller count of unique mentors by title to better match exisiting mentee criteria
SELECT * FROM unique_mentor_count;
