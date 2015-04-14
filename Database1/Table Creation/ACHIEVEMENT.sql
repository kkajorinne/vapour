CREATE TABLE [dbo].[ACHIEVEMENT]
(
	[game_title] VARCHAR(50) NOT NULL , 
    [game_release_date] DATE NOT NULL, 
	[title] VARCHAR(50) NOT NULL , 
    [description] VARCHAR(MAX) NULL, 
    PRIMARY KEY ([game_title], [game_release_date], [title]), 
    CONSTRAINT [FK_ACHIEVEMENT_game] FOREIGN KEY ([game_title], [game_release_date]) REFERENCES GAME([title], [release_date])
)
