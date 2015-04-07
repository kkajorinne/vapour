CREATE TABLE [dbo].[BUNDLE]
(
	[name] VARCHAR(50) NOT NULL PRIMARY KEY, 
    [price] MONEY NULL, 
    [dev_username] VARCHAR(50) NULL, 
    CONSTRAINT [FK_BUNDLE_DEV] FOREIGN KEY (dev_username) REFERENCES DEV(username)
)
