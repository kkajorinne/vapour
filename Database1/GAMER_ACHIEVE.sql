CREATE TABLE [dbo].[GAMER_ACHIEVES]
(
	[gamer_username] VARCHAR(50) NOT NULL , 
	[ach_game_title] VARCHAR(50) NOT NULL , 
    [ach_game_release_date] DATE NOT NULL, 
    [ach_title] VARCHAR(50) NOT NULL, 
    PRIMARY KEY ([ach_title], [ach_game_release_date], [ach_game_title], [gamer_username]), 
	CONSTRAINT [FK_GAMER_ACHIEVE_username] FOREIGN KEY ([gamer_username]) REFERENCES GAMER(username) ON DELETE CASCADE,
	CONSTRAINT [FK_GAMER_ACHIEVE_title] FOREIGN KEY ([ach_title]) REFERENCES ACHIEVEMENT(title) ON DELETE CASCADE,
	CONSTRAINT [FK_GAMER_ACHIEVE_game_title] FOREIGN KEY ([ach_game_title]) REFERENCES ACHIEVEMENT(game_title) ON DELETE CASCADE,
    CONSTRAINT [FK_GAMER_ACHIEVE_game_release_date] FOREIGN KEY ([ach_game_release_date]) REFERENCES ACHIEVEMENT(game_release_date) ON DELETE CASCADE,
)