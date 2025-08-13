/*
DDL stands for Data Definition Language in SQL. 
It consists of a set of SQL commands used to define the database schema and structure. Common DDL keywords include:

CREATE | ALTER | DROP | TRUNCATE | RENAME
*/


-- CREATE: Used to create database objects like tables, indexes, views, etc.
--- Creating Tables: The CREATE TABLE statement is used to create a new table in the database.
CREATE TABLE SampleTable (
    ID INT,
    Name VARCHAR(50),
    Age INT,
    Gender CHAR(1),
    Height FLOAT,
    Birthday DATE,
    IsActive INT,
    Description TEXT
);
-- This statement creates a table named SampleTable with columns ID, Name, Age, Gender, Height, Birthday, IsActive, and Description.
---Creating Indexes: 
		-- Indexes are used to improve the speed of data retrieval operations on a table.
CREATE INDEX IX_Age ON SampleTable (Age);
-- This command creates an index named IX_Age on the Age column of the SampleTable. 
--Indexes help optimize query performance when filtering or sorting data based on this indexed column.

---Creating Views: 
	-- Views are virtual tables derived from one or multiple tables.
CREATE VIEW SampleTableView AS
SELECT ID, Name, Age, Gender
FROM SampleTable;
--This command creates a view named SampleTableView that selects the ID, Name, Age, and Gender columns from the SampleTable.
--You can modify the SELECT statement within the CREATE VIEW command to suit your specific requirements for the view's data selection and presentation.
-------------------------------------------------------------------------------------------------------------------------------------

-- ALTER: Modifies the structure of an existing database object.

--Add a Column:
ALTER TABLE SampleTable ADD Email VARCHAR(100);
-- This command adds a new column named Email of type VARCHAR(100) to the existing SampleTable.

--  Modify a Column:
ALTER TABLE SampleTable ALTER COLUMN Height DECIMAL(5, 2);
-- This command modifies the Height column from its existing data type to DECIMAL(5, 2).

-- Rename a Column:
ALTER TABLE SampleTable RENAME COLUMN IsActive TO ActiveStatus;
-- This command renames the column IsActive to ActiveStatus in the SampleTable.

-- Drop a Column:
ALTER TABLE SampleTable DROP COLUMN Description;
-- This command removes the Description column from the SampleTable.

-- Add a Constraint(We have separate module):
ALTER TABLE SampleTable ALTER COLUMN Age INT NOT NULL;
-- This command modifies the Age column to disallow NULL values by adding a NOT NULL constraint.

-------------------------------------------------------------------------------------------------------------------------------------

-- DROP: Deletes an existing database object from the database.

DROP TABLE SampleTable;
-- This command deletes the entire SampleTable including all its columns, data, indexes, constraints, and triggers.

DROP INDEX IX_DepartmentID ON Employees;
-- As there's an index named IX_DepartmentID on the DepartmentID column in the Employees table, this command would drop that specific index.

DROP VIEW SampleTableView;
-- This command deletes the view named SampleTableView that was created previously.

DROP DATABASE NewDatabase;
-- This command would delete the entire NewDatabase, including all its tables, views, procedures, etc.

-------------------------------------------------------------------------------------------------------------------------------------

-- TRUNCATE: Deletes all records from a table, but keeps the table structure intact.

TRUNCATE TABLE SampleTable;

/*
This statement will remove all records from the SampleTable while keeping the table structure intact. 
It's important to note that TRUNCATE is a faster operation compared to DELETE, especially on large tables, 
as it doesn't log individual row deletions and doesn't trigger any associated triggers or constraints like DELETE does.
*/