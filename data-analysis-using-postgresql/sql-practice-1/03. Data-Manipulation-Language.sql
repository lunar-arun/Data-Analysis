/*
DML stands for Data Manipulation Language. 
It consists of SQL keywords used to manipulate data stored in a database. The primary DML keywords are:

INSERT | SELECT | UPDATE | DELETE | MERGE
*/

-- INSERT: Adds new records or rows to a table.
-- Inserting a new record into SampleTable
INSERT INTO SampleTable (ID, Name, Age, Gender, Height, Birthday, IsActive, Description)
VALUES (51, 'Yannis', 27, 'M', 176.1, '1996-08-05', 1, 'This is a new record.');
-------------------------------------------------------------------------------------------------------------------------------------

-- SELECT: Retrieves data from one or more tables.
-- Retrieving data from SampleTable
SELECT ID, Name, Age, Gender
FROM SampleTable
WHERE IsActive = 1;
-------------------------------------------------------------------------------------------------------------------------------------

-- UPDATE: Modifies existing records in a table.
-- Updating a record in SampleTable
UPDATE SampleTable
SET Height = 170.0
WHERE ID = 2;
-------------------------------------------------------------------------------------------------------------------------------------

-- DELETE: Removes records from a table.
-- Deleting a record from SampleTable
DELETE FROM SampleTable
WHERE ID = 3;
-------------------------------------------------------------------------------------------------------------------------------------

-- MERGE: Performs multiple DML operations such as INSERT, UPDATE, or DELETE in a single statement.
MERGE INTO SampleTable AS Target
USING (VALUES (51, 'Yannis', 27, 'M', 176.1, '1996-08-05', 1, 'This is a new record.')) AS Source (ID, Name, Age, Gender, Height, Birthday, IsActive, Description)
ON Target.ID = Source.ID
WHEN MATCHED THEN
    UPDATE SET Name = Source.Name, Age = Source.Age, Height = Source.Height, Birthday = Source.Birthday, IsActive = Source.IsActive, Description = Source.Description
WHEN NOT MATCHED THEN
    INSERT (ID, Name, Age, Gender, Height, Birthday, IsActive, Description)
    VALUES (Source.ID, Source.Name, Source.Age, Source.Gender, Source.Height, Source.Birthday, Source.IsActive, Source.Description);
-- This MERGE command attempts to insert a new record if the ID does not exist in the SampleTable. 
-- If the ID matches an existing record, it updates the fields Name, Age, Height, Birthday, IsActive, and Description.