/*
SQL constraints are rules defined on columns or tables to enforce data integrity and ensure accuracy, consistency, 
and reliability of the data stored in a database. 
Constraints help in maintaining the quality of data by imposing limitations or conditions on the data that can be inserted or updated in a table.
*/

--PRIMARY KEY: A primary key constraint uniquely identifies each record in a table. 
	--It ensures that the values in a specified column (or columns) are unique and not null.
	
-- Example from the above table: 
	-- ID INT PRIMARY KEY - This specifies that the ID column in the SampleTable is a primary key and must contain unique values for each record.
	
-- UNIQUE: The unique constraint ensures that all values in a specified column (or columns) are unique.
-- Example from the above table: 
	-- There isn't a unique constraint explicitly defined, but if needed, you could set a unique constraint on the Name column to ensure that each name is unique.	
	
-- FOREIGN KEY: A foreign key constraint establishes a relationship between two tables. 
-- It ensures referential integrity by enforcing that the values in a column from one table exist in another table's column.
-- Example from the above table: 
	-- If you had another table GenderTable with gender information (e.g., Male and Female), 
	-- you could set a foreign key constraint on the Gender column in SampleTable to refer to the GenderTable.
	
-- NOT NULL: This constraint ensures that a column cannot contain NULL values.
-- Example from the above table: 
	--Name VARCHAR(50) NOT NULL - This means the Name column cannot be empty for any record.	

-- CHECK: The check constraint specifies a condition that must be met for the data to be valid.
-- Example from the above table: 
	--If there was a constraint that all ages in SampleTable must be greater than zero, you could define it as Age INT CHECK (Age > 0).
	
-- Create a table with constraints
CREATE TABLE SampleTable (
    ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age > 0),
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    Height FLOAT,
    Birthday DATE,
    IsActive BIT,
    Description TEXT
);


/*
ID INT PRIMARY KEY defines the ID column as a primary key.
Name VARCHAR(50) NOT NULL specifies that the Name column cannot contain NULL values.
Age INT CHECK (Age > 0) ensures that the Age column's values are greater than zero.
Gender CHAR(1) CHECK (Gender IN ('M', 'F')) restricts the Gender column values to only 'M' or 'F'.
*/

-- We can use ALTER TABLE to add constraints:

-- Alter table to add constraints
ALTER TABLE SampleTable
ADD CONSTRAINT PK_SampleTable_ID PRIMARY KEY (ID),
ADD CONSTRAINT CHK_Age_Positive CHECK (Age > 0),
ADD CONSTRAINT CHK_Gender_Value CHECK (Gender IN ('M', 'F')),
ADD CONSTRAINT CHK_Name_Not_Null CHECK (Name IS NOT NULL);

/*
Explanation:

ADD CONSTRAINT PK_SampleTable_ID PRIMARY KEY (ID) adds a primary key constraint to the ID column.
ADD CONSTRAINT CHK_Age_Positive CHECK (Age > 0) adds a check constraint to ensure Age values are positive.
ADD CONSTRAINT CHK_Gender_Value CHECK (Gender IN ('M', 'F')) adds a check constraint to allow only 'M' or 'F' in the Gender column.
ADD CONSTRAINT CHK_Name_Not_Null CHECK (Name IS NOT NULL) adds a constraint to ensure that the Name column does not contain NULL values.
*/