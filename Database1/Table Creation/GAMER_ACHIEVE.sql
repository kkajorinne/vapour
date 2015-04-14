CREATE TABLE [dbo].[GAMER_ACHIEVES]
(
	[gamer_username] VARCHAR(50) NOT NULL, 
	[ach_game_title] VARCHAR(50) NOT NULL, 
    [ach_game_release_date] DATE NOT NULL, 
    [ach_title] VARCHAR(50) NOT NULL, 
    PRIMARY KEY ([ach_game_title], [ach_game_release_date], [ach_title], [gamer_username]), 
	CONSTRAINT [FK_GAMER_ACHIEVE_gamer] FOREIGN KEY ([gamer_username]) REFERENCES GAMER([username]),
	CONSTRAINT [FK_GAMER_ACHIEVE_achievement] FOREIGN KEY ([ach_game_title], [ach_game_release_date], [ach_title]) REFERENCES ACHIEVEMENT([game_title], [game_release_date], [title])
)