/*
DCL stands for Data Control Language in SQL. 
It comprises keywords that are used to control access to data within a database. 
DCL primarily includes two main keywords: GRANT and REVOKE.

*/

-- GRANT: This keyword allows specific privileges to be granted to users or roles within the database.

GRANT SELECT ON SampleTable TO example_user;

-- REVOKE: This keyword is used to revoke previously granted privileges from users or roles.

REVOKE INSERT ON SampleTable FROM example_user;

