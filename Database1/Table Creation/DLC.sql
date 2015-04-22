CREATE TABLE [dbo].[DLC]
(
	[game_title] VARCHAR(50) NOT NULL , 
    [game_release_date] VARCHAR(50) NOT NULL, 
	[title] VARCHAR(50) NOT NULL , 
    [release_date] DATE NOT NULL, 
    [price] MONEY NULL, 
    [description] VARCHAR(MAX) NULL, 
    [data] VARCHAR(50) NULL, 
    [admin_username] VARCHAR(50) NULL, 
    [dev_username] VARCHAR(50) NULL, 
    PRIMARY KEY ([game_title], [game_release_date], [title], [release_date]), 
    CONSTRAINT [FK_DLC_game] FOREIGN KEY ([game_title], [game_release_date]) REFERENCES GAME([title], [release_date]),
	CONSTRAINT [FK_DLC_admin] FOREIGN KEY ([admin_username]) REFERENCES ADMIN([username]),
	CONSTRAINT [FK_DLC_dev] FOREIGN KEY ([dev_username]) REFERENCES DEV([username]) 
)
