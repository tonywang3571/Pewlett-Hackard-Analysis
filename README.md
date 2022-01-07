# Pewlett-Hackard-Analysis

## Overview of Project

**Purpose:**  
Bobby, an HR analyst working for Pewlett Hackard, I were tasked with figuring out who and how many people will be retiring in the next few years. Using SQL, we will be writing queries and using tables to build an employee database. From this database, we can figure out who will be retiring, how many employees will be retiring, and from which department they will be retiring from.  

## Resources:  
- Data Source: employees.csv, dept_manager.csv, dept_emp.csv, departments.csv, salaries.csv, titles.csv
- Software: pgAdmin 4, [quickdatabasediagrams](https://www.quickdatabasediagrams.com/)  

## Analysis and Results  

**Analysis:**  
For this analysis, we used pgAdmin to create queries and tables to filter through our data to aquire information on employee number, name, title, birth date and how long they have been holding those specific titles. Remembering our goal, figuring out who and how many people were retiring from each department, we also had to filter out and remove people who had been working at the company but have left the company since as they were also included in the tables provided. We also needed to filter out and remove people who have held different or multiple titles through job transfers or promotions (ie engineer vs. senior engineer) because those previous positions were also included in the data provided. This is so we do not "double count" any employees currently present at the company. From there, we can calculate the total number of employees from each department and the overall total employees.  

Additionally, we refractored our queries to calculate the number of employees who would be eligible to be part of a mentorship program to help train up and coming employees at Pewlett Hackard who may not have as much experience as the senior employees who have been at the company for some time.  

**Results:**  
- Number of employees retiring:  
We used birthdates of employees that were born in 1952-1955 as a parameter for employees retiring. We were able to filter those employees into different groups based on their current title. Looking at the image below, we calculated 72,461 total employees that will be retiring.  

- Title of employees retiring:  
From the total employees that are retiring, we were able to separate them into different groups based on their current titles. We can see from our image, we have 25,916 Senior Engineers and 24,926 Senior Staff employees retiring.  
<img src="Resources/sum_retiring_titles.PNG">  

- Number of employees eligible for mentorship program:  
Similarly to our code when calculating our number of employees retiring, we wanted to see who would be eligible for in a metorship program to assist up and coming employees at Pewlet Hackard. We filtered our data by employees born in 1965, we also had to filter out duplicate employees who may hold different titles in the past and sorted them by their current titles (see image below). We were able to calculate a total of 1,549 employees who are eligible for the mentorship program.  

- Title of emplyees eligible for mentorship program:   
We can see from the image below, there are not many employees that are eligible for the mentorship program. Especially since we know that Pewlett Hackard is a fairly large company.  
<img src="Resources/sum_mentorship_eligibility_titles.PNG">  

## Challenge Summary  

**Summary**  
Performing an analysis on number of employees retiring and employees eligible for a mentorship program, we are able to help Bobby provide an accurate reports to his Manager on how many positions, as well as the titles of the positions, that will need to be filled. The same also applies to the mentorship program to help up and coming employees who are still working at the company. From our analysis, we calculated a total of 72,461 employees that will be retiring from the company. As well as a total of 1,549 employees that qualify for the mentorship program. We can see that the number of employees retiring are realtively high compared to the number of employees for the mentorship program. I also performed calculations for how many employees are left at the company after removing the wave of retiring employees, as well as duplicates and employees who have already left the company. I arrived at 167,666 employees that will continue to work at Pewlett Hackard (166,117 employees if you subtract the employees mentoring the younger generation). This is about 107 employees per mentor if each employee gets a mentor. I would think that would be overwhelming for the mentors, and would either have to limit how many mentees would each mentor have under them or increase who is eligible to be a mentor in the mentorship program.  
<img src="Resources/sum_emp_working_titles.PNG">  

### Codes Used  
<img src="Resources/code1.PNG">  
<img src="Resources/code2.PNG">  
<img src="Resources/code3.PNG">  
<img src="Resources/code4.PNG">  