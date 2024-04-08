# Employee Database with SQL
 
## Overview of Project

Create a written analysis with three key deliverables as follows; 

Here is the list of deliverables for the analysis of the Pewlett-Hackard-Analysis:
 
Deliverable 1: The Number of Retiring Employees by Title
Deliverable 2: The Employees Eligible for the Mentorship Program
Deliverable 3: A written report on the employee database analysis (README.md)

The tools we will be using are an online tool called Quick Database Diagrams "Quick DBD" and the PostgreSQL and pgAdmin while posting to GitHub repository for the team to review work if required.

We will be importing the following .csv files; 

- departments.csv
- dep_emp.csv
- dept_manager.csv
- employees.csv
- salaries.csv
- titles.csv

## Results

In the queires folder you can find the Queries file called Employee_Database_challenge.sql , queries.sql for the tables imports and Schemes.sql for the module table work.  

The running of the queries work to produce the following csv. files located in the Pewlett Hackard>Data folder for deliverable 1;

- retirement_titles.csv
- unique_titles.csv
- retiring_titles.csv 

The running of the queries work to produce the following csv. files located in the Pewlett Hackard>Data folder for deliverable 2;

- mentorship_eligibility.csv

The running of the queries also produce an analysis for the readme results section with an output of; 

- mentoriship_catagories.csv

## Summary

Running two additional unique queries on the data to get the count of those retiring and the count of the available employees for mentorship reveal the following:

- Pewlett Hackard has 510,000 employees and 267,552 roles will need to be filled as a result of the retirement impact.  

![retiring_titles](https://github.com/735713038455163/Employee-Database-with-SQL/blob/master/Pewlett-Hackard-Analysis/retiring_titles.PNG)
![retiring_count](https://github.com/735713038455163/Employee-Database-with-SQL/blob/master/Pewlett-Hackard-Analysis/retiring_count.PNG)

- There are not enough qualified employees in the departments to fill them as their are only 1549 eligible for mentorship.   

![mentorship_catagories](https://github.com/735713038455163/Employee-Database-with-SQL/blob/master/Pewlett-Hackard-Analysis/mentorship%20catagories.PNG)
![mentorship count](https://github.com/735713038455163/Employee-Database-with-SQL/blob/master/Pewlett-Hackard-Analysis/mentorship%20count.PNG)

Pewlett hackard will be losing qualified trained employees without enough internal staff to replace them. 
Pewlett should consider downsizing or hiring qualified staff externally for replacement. 
Additional queries can be ran to determine qualification for mentorship not based on age but on goals and existing skills for cross training. The search expands to include previous employees who may be inactive and they could potentially be contacted to return in a more advanced role. 


## Challenges

The module seven challenge required to verify the .csv files, especially to check which titles was in fact be the most recent. To do this you compared the mentorship image to your query data output. For each employee that didn't match a where function set to equal the employee number in question, one can confirm that the data tables exported where in fact correct.   

![Where](https://github.com/735713038455163/Employee-Database-with-SQL/blob/master/Pewlett-Hackard-Analysis/Where.PNG)
