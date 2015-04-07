CREATE TABLE [dbo].[ADMIN]
(
	[username] VARCHAR(50) NOT NULL PRIMARY KEY, 
    [first_name] VARCHAR(50) NULL, 
    [middle_names] VARCHAR(50) NULL, 
    [last_name] VARCHAR(50) NULL, 
    [password] VARCHAR(50) NOT NULL, 
    [email] VARCHAR(50) NOT NULL, 
)
