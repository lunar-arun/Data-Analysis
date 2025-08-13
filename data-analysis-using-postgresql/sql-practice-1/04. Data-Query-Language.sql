/*
DQL stands for Data Query Language, which is a subset of SQL (Structured Query Language) 
	responsible for retrieving and manipulating data stored in a database. 
DQL primarily consists of the SELECT statement, along with a few other keywords to 
	filter, sort, and manipulate the retrieved data.
	
order of keywords:

SELECT: 
	Retrieves data from one or more tables.
FROM: 
	Specifies the table(s) from which to retrieve data.
WHERE: 
	Filters data based on specified conditions.
GROUP BY: 
	Groups rows that have the same values into summary rows.
ORDER BY: 
	Sorts the result set based on specified columns.
HAVING: 
	Filters data similar to WHERE, but used with aggregate functions after GROUP BY.
JOIN: 
	Retrieves data from multiple tables based on a related column between them.
DISTINCT: 
	Selects unique/distinct values from a column.
*/

-- Select all columns for a specific gender:

SELECT * FROM SampleTable WHERE Gender = 'F';

-- Select name and age of individuals aged 30 and above:

SELECT Name, Age FROM SampleTable WHERE Age >= 30;

-- Count of active and inactive records:

SELECT IsActive, COUNT(*) AS Count FROM SampleTable GROUP BY IsActive;

-- Sort records by height in descending order:

SELECT * FROM SampleTable ORDER BY Height DESC;

-- Retrieve unique descriptions:

SELECT DISTINCT Description FROM SampleTable;

