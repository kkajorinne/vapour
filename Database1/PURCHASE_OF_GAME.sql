CREATE TABLE [dbo].[PURCHASE_OF_GAME]
(
	[purchase_gamer_username] VARCHAR(50) NOT NULL , 
    [purchase_date_time] DATETIME NOT NULL, 
	[game_title] VARCHAR(50) NOT NULL , 
    [game_release_date] DATE NOT NULL, 
    PRIMARY KEY ([purchase_gamer_username], [purchase_date_time], [game_title], [game_release_date]), 
    CONSTRAINT [FK_PURCHASE_GAME_gamer_username] FOREIGN KEY ([purchase_gamer_username]) REFERENCES PURCHASE(gamer_username) ON DELETE CASCADE,
	CONSTRAINT [FK_PURCHASE_GAME_date_time] FOREIGN KEY ([purchase_date_time]) REFERENCES PURCHASE(date_time) ON DELETE CASCADE,
	CONSTRAINT [FK_PURCHASE_GAME_game_title] FOREIGN KEY ([game_title]) REFERENCES GAME(title) ON DELETE CASCADE,
    CONSTRAINT [FK_PURCHASE_GAME_game_release_date] FOREIGN KEY ([game_release_date]) REFERENCES GAME(release_date) ON DELETE CASCADE,
)
