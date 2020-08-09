--Deliverable 1: retiring employees by title.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS t
	ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- list of title retirees
SELECT COUNT(ut.emp_no), 
	ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC, ut.title;

SELECT * FROM retiring_titles;

-- Mentorship eligibilty listing
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND de.to_date = '9999-01-01'
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;

-- list of title mentorship
SELECT COUNT(me.emp_no), 
	me.title
INTO mentorship_titles
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY count DESC, me.title;

SELECT * FROM retiring_titles;

-- number of employees with less than 10 years at PH.
SELECT * FROM employees
ORDER BY hire_date DESC

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO mentor_candidates
FROM employees AS e
LEFT JOIN titles AS t
	ON e.emp_no = t.emp_no
WHERE (e.hire_date BETWEEN '1990-01-31' AND '9999-01-01') 
AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- list of title mentorship count
SELECT COUNT(mc.emp_no), 
	mc.title
INTO candidate_count
FROM mentor_candidates as mc
GROUP BY mc.title
ORDER BY count DESC, mc.title;

SELECT * FROM candidate_count