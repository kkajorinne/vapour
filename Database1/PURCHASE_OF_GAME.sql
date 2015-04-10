CREATE TABLE [dbo].[PURCHASE_OF_GAME]
(
	[purchase_gamer_username] VARCHAR(50) NOT NULL , 
    [purchase_date_time] DATETIME NOT NULL, 
	[game_title] VARCHAR(50) NOT NULL , 
    [game_release_date] DATE NOT NULL, 
    PRIMARY KEY ([purchase_gamer_username], [purchase_date_time], [game_title], [game_release_date]), 
    CONSTRAINT [FK_PURCHASE_OF_GAME_purchase] FOREIGN KEY ([purchase_gamer_username], [purchase_date_time]) REFERENCES PURCHASE([gamer_username], [date_time]),
	CONSTRAINT [FK_PURCHASE_OF_GAME_game] FOREIGN KEY ([game_title], [game_release_date]) REFERENCES GAME([title], [release_date])
)
