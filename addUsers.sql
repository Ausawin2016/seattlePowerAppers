--Create new contained User for Database 

CREATE USER <enter user name> WITH PASSWORD = '<enter password>'

--Create new role for database
--Use DROP ROLE <enter role name> to delete

CREATE ROLE <enter role name>

--Grant read/write access to a Role 

EXEC sp_addrolemember N'db_datareader', N'<enter role name>'  
GO  
EXEC sp_addrolemember N'db_datawriter', N'<enter role name>'  
GO

--Add User to Role 
--Use ALTER ROLE db_datawriter DROP MEMBER <enter user name> to remove user from Role; 
ALTER ROLE <enter role name> ADD MEMBER <enter user name>