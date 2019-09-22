-- Create a new table called 'webResources' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.webResources', 'U') IS NOT NULL
DROP TABLE dbo.webResources
GO
-- Create the table in the specified schema
CREATE TABLE dbo.webResources
(
  webResourceId INT IDENTITY(1,1) NOT NULL PRIMARY KEY, -- primary key column
  dateTimeAdded [NVARCHAR](50),
  latitude [NVARCHAR](50),
  longitude [NVARCHAR](50),
  deviceAddedFrom [NVARCHAR](50),
  resourceURL [NVARCHAR](MAX),
  resourceTags [NVARCHAR](MAX),
  resourceNotes [NVARCHAR](MAX)
  
  -- specify more columns here
);
GO

SELECT * FROM dbo.webResources