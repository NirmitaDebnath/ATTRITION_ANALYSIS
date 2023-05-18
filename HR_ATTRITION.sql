USE hr_attirition;
SHOW TABLES;
SELECT * FROM hr;

-- CKECKED THE DATA FRAME IN JUPYTER NOTEBOOK USING PANDAS,NO DUPLICATE EMPLOYEE ID IS PRESENT AND NO NULL VALUES

ALTER TABLE hr
CHANGE COLUMN ï»¿EmployeeNumber EmpID int(4);

SELECT * FROM hr;

-- AS CHECKED IN JUPYTER NOTEBOOK THE DATA TYPES OF THE VARIABLES ARE CORRECT

-- QUESTIONS

--  What is the gender breakdown of employees in the company?
SELECT COUNT((Gender)) FROM hr; -- 1470
SELECT COUNT((Gender)) FROM hr where Gender='Male'; -- 882
SELECT COUNT((Gender)) FROM hr where Gender='Female'; -- 588

--  What is the average age of employee leaving the company?
select avg(Age) from hr; -- 36.9238

-- What is the attirition count?
select count(Attrition) from hr where Attrition='Yes';

-- What is the age distribution of employees in the company?
select distinct(Age) from hr order by Age;