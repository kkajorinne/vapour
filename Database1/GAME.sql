CREATE TABLE [dbo].[GAME]
(
	[title] VARCHAR(50) NOT NULL , 
    [release_date] DATE NOT NULL, 
    [genres] VARCHAR(50) NULL, 
    [price] MONEY NULL, 
    [ESRB] VARCHAR(50) NULL, 
    [description] VARCHAR(MAX) NULL, 
    [data] VARCHAR(50) NULL, 
    [admin_username] VARCHAR(50) NULL, 
    [dev_username] VARCHAR(50) NULL, 
    PRIMARY KEY ([title], [release_date]), 
    CONSTRAINT [FK_GAME_ADMIN] FOREIGN KEY (admin_username) REFERENCES ADMIN(username),
	CONSTRAINT [FK_GAME_DEV] FOREIGN KEY (dev_username) REFERENCES DEV(username)  
)
