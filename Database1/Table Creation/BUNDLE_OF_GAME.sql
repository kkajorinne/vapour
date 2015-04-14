CREATE TABLE [dbo].[BUNDLE_OF_GAME]
(
	[bundle_name] VARCHAR(50) NOT NULL , 
	[game_title] VARCHAR(50) NOT NULL , 
    [game_release_date] DATE NOT NULL, 
    PRIMARY KEY ([bundle_name], [game_title], [game_release_date]), 
	CONSTRAINT [FK_BUNDLE_OF_GAME_bundle] FOREIGN KEY ([bundle_name]) REFERENCES BUNDLE([name]),
	CONSTRAINT [FK_BUNDLE_OF_GAME_game] FOREIGN KEY ([game_title], [game_release_date]) REFERENCES GAME([title], [release_date])
)
