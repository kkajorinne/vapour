CREATE TABLE [dbo].[DLC]
(
	[game_title] VARCHAR(50) NOT NULL , 
    [game_release_date] DATE NOT NULL, 
	[title] VARCHAR(50) NOT NULL , 
    [release_date] DATE NOT NULL, 
    [genres] VARCHAR(50) NULL, 
    [price] MONEY NULL, 
    [ESRB] VARCHAR(50) NULL, 
    [description] VARCHAR(MAX) NULL, 
    [data] VARCHAR(50) NULL, 
    [admin_username] VARCHAR(50) NULL, 
    [dev_username] VARCHAR(50) NULL, 
    PRIMARY KEY ([game_title], [game_release_date], [title], [release_date]), 
    CONSTRAINT [FK_DLC_GAME_title] FOREIGN KEY (game_title) REFERENCES GAME(title) ON DELETE CASCADE,
    CONSTRAINT [FK_DLC_GAME_release_date] FOREIGN KEY (game_release_date) REFERENCES GAME(release_date) ON DELETE CASCADE,
	CONSTRAINT [FK_DLC_ADMIN] FOREIGN KEY (admin_username) REFERENCES ADMIN(username),
	CONSTRAINT [FK_DLC_DEV] FOREIGN KEY (dev_username) REFERENCES DEV(username) 
)
