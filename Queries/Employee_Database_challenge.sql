-- Retirement title table creation
SELECT emp_no, first_name, last_name, birth_date
INTO retirement_titles_pr
FROM employees;

SELECT * FROM retirement_titles_pr;
DROP TABLE retirement_titles_pr;
DROP TABLE retirement_titles;

SELECT rt.emp_no, rt.first_name, rt.last_name,
ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM retirement_titles_pr as rt
LEFT JOIN titles as ti
ON ti.emp_no = rt.emp_no
WHERE rt.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- Number of employees by their most recent job
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

DROP TABLE retiring_titles;
SELECT * FROM retiring_titles;

-- employees who are eligible to participate in a mentorship program.
SELECT DISTINCT ON (em.emp_no) em.emp_no, em.first_name, em.last_name, em.birth_date,
de.from_date, de.to_date, ti.title
INTO mentorship_eligibility
FROM employees as em
LEFT JOIN dept_emp as de
ON de.emp_no = em.emp_no
LEFT JOIN titles as ti
ON ti.emp_no = em.emp_no
WHERE (de.to_date = '9999-01-01') 
AND (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY em.emp_no ASC;

SELECT * FROM mentorship_eligibility;
DROP TABLE mentorship_eligibility;

-- Summary 1
SELECT emp_no, first_name, last_name, birth_date
INTO retirement_titles_summ_1
FROM employees;

SELECT rt.emp_no, rt.first_name, rt.last_name,
ti.title, ti.from_date, ti.to_date
INTO retirement_titles_upcoming
FROM retirement_titles_summ_1 as rt
LEFT JOIN titles as ti
ON ti.emp_no = rt.emp_no
WHERE rt.birth_date BETWEEN '1952-01-01' AND '1952-12-31'
ORDER BY emp_no ASC;

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles_upcoming
FROM retirement_titles_upcoming
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT COUNT(emp_no), title
INTO retiring_titles_upcoming
FROM unique_titles_upcoming
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

SELECT * FROM retirement_titles_upcoming;
SELECT * FROM retiring_titles_upcoming;
DROP TABLE retiring_titles_upcoming;

SELECT COUNT (emp_no), title
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT(emp_no) DESC;