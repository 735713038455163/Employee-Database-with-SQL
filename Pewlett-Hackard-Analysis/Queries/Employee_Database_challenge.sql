--Follow the instructions below to complete Deliverable 1.
--1)Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT * FROM employees
SELECT emp_no, first_name, last_name
FROM employees;
--2)Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT * FROM titles
SELECT title, from_date, to_date
FROM titles;
--3)Create a new table using the INTO clause.
SELECT * FROM employees
SELECT * FROM titles
SELECT * FROM employee_name
SELECT emp_no, first_name, last_name
INTO employee_name
FROM employees;
--4)Join both tables on the primary key.
SELECT en.emp_no,
en.first_name,
en.last_name,
t.title,
t.from_date,
t.to_date
FROM employee_name as en
LEFT JOIN titles as t
ON en.emp_no =t.emp_no
--5)Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as t
ON e.emp_no =t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY "emp_no"
--6)Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
DROP TABLE retirement_titles
--7)Before you export your table, confirm that it looks like this image:
SELECT * FROM retirement_titles
-- Use Dictinct with Orderby to remove duplicate rows
-- -- Note: There are duplicate entries for some employees because they have switched titles over the years. Use the following instructions to remove these duplicates and keep only the most recent title of each employee.
-- -- 8) Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.from_date DESC;
-- -- 9) Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
SELECT * FROM retirement_titles
-- -- These columns will be in the new table that will hold the most recent title of each employee.
SELECT * FROM unique_titles
-- -- 10)Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
--WHERE to_date ='9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;
Drop TABLE unique_titles
-- If you’d like a hint on using the DISTINCT ON statement, that’s totally okay. If not, that’s great too. You can always revisit this later if you change your mind.
-- 11.	Create a Unique Titles table using the INTO clause.
-- 12.	Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e. to_date) of the most recent title.
-- 13.	Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- 14.	Before you export your table, confirm that it looks like this image:
 
-- 15.Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
-- 16.First, retrieve the number of titles from the Unique Titles table.
SELECT * FROM  unique_titles
SELECT COUNT (title) FROM unique_titles
SELECT COUNT(title),title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title)DESC;
-- 17.Then, create a Retiring Titles table to hold the required information.

SELECT * FROM retiring_titles
-- Group the table by title, then sort the count column in descending order.
-- Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- Before you export your table, confirm that it looks like this image:
-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
SELECT * FROM Employees
emp_no, first_name, last_name, and birth_date
-- Retrieve the from_date and to_date columns from the Department Employee table.
SELECT * FROM Dept_emp
from_date, to_date
-- Retrieve the title column from the Titles table.
SELECT * FROM Titles
WHERE emp_no = 12155
title
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
DROP TABLE mentorship_eligibily

SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibily
FROM employees as e
JOIN dept_emp as de
ON e.emp_no=de.emp_no
JOIN titles as t
ON de.emp_no=t.emp_no
WHERE (de.to_date = '9999-01-01') AND(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibily
-- Create a new table using the INTO clause.
-- Join the Employees and the Department Employee tables on the primary key.
-- Join the Employees and the Titles tables on the primary key.
-- Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
-- Order the table by the employee number.
-- Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- Before you export your table, confirm that it looks like this image:

--Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.

SELECT rt.emp_no,
rt.first_name,
rt.last_name,
rt.title,
rt.from_date,
rt.to_date
e.birth_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as t
ON e.emp_no =t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY "emp_no"

--Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
DROP TABLE retirement_titles
--Before you export your table, confirm that it looks like this image:

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows

-- -- Note: There are duplicate entries for some employees because they have switched titles over the years. Use the following instructions to remove these duplicates and keep only the most recent title of each employee.

-- -- Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.

SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.from_date DESC;

-- -- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
SELECT * FROM retirement_titles
-- -- These columns will be in the new table that will hold the most recent title of each employee.
SELECT * FROM unique_titles
-- -- Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;


Drop TABLE unique_titles
-- -- If you’d like a hint on using the DISTINCT ON statement, that’s totally okay. If not, that’s great too. You can always revisit this later if you change your mind.

-- Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
-- First, retrieve the number of titles from the Unique Titles table.
SELECT * FROM  unique_titles
SELECT COUNT (title) FROM unique_titles 

SELECT COUNT(title),title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title)DESC;


-- Then, create a Retiring Titles table to hold the required information.
-- Group the table by title, then sort the count column in descending order.
-- Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- Before you export your table, confirm that it looks like this image:

-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
SELECT * FROM Employees
emp_no, first_name, last_name, and birth_date
-- Retrieve the from_date and to_date columns from the Department Employee table.
SELECT * FROM Dept_emp
from_date, to_date
-- Retrieve the title column from the Titles table.
SELECT * FROM Titles
title

-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON(e.emp_no) 
e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date, 
de.from_date, 
de.to_date, 
ti.title
INTO mentorship_eligibily
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE(de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY e.emp_no;

DROP TABLE mentorship_eligibily
SELECT * FROM mentorship_eligibily
-- Create a new table using the INTO clause.
-- Join the Employees and the Department Employee tables on the primary key.
-- Join the Employees and the Titles tables on the primary key.
-- Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
-- Order the table by the employee number.
-- Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- Before you export your table, confirm that it looks like this image:
SELECT * FROM retirement_titles
SELECT * FROM unique_titles
SELECT * FROM retiring_titles
SELECT COUNT (title) FROM retiring_titles

SELECT * FROM mentorship_catagories
SELECT COUNT (title) FROM mentorship_eligibily

SELECT * FROM  mentorship_catagories
SELECT COUNT (title) FROM mentorship_eligibily
SELECT COUNT(title),title
INTO mentorship_catagories
FROM mentorship_eligibily
GROUP BY title
ORDER BY COUNT(title)DESC;
