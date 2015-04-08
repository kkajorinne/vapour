CREATE TABLE [dbo].[PURCHASE_OF_DLC]
(
	[purchase_gamer_username] VARCHAR(50) NOT NULL , 
    [purchase_date_time] DATETIME NOT NULL, 
	[dlc_game_title] VARCHAR(50) NOT NULL , 
    [dlc_game_release_date] DATE NOT NULL, 
	[dlc_title] VARCHAR(50) NOT NULL , 
    [dlc_release_date] DATE NOT NULL, 
    PRIMARY KEY ([purchase_gamer_username], [purchase_date_time], [dlc_game_title], [dlc_game_release_date], [dlc_title], [dlc_release_date]), 
    CONSTRAINT [FK_PURCHASE_DLC_gamer_username] FOREIGN KEY ([purchase_gamer_username]) REFERENCES PURCHASE(gamer_username) ON DELETE CASCADE,
	CONSTRAINT [FK_PURCHASE_DLC_date_time] FOREIGN KEY ([purchase_date_time]) REFERENCES PURCHASE(date_time) ON DELETE CASCADE,
	CONSTRAINT [FK_PURCHASE_DLC_game_title] FOREIGN KEY (dlc_game_title) REFERENCES DLC(game_title) ON DELETE CASCADE,
    CONSTRAINT [FK_PURCHASE_DLC_game_release_date] FOREIGN KEY (dlc_game_release_date) REFERENCES DLC(game_release_date) ON DELETE CASCADE,
	CONSTRAINT [FK_PURCHASE_DLC_dlc_title] FOREIGN KEY (dlc_title) REFERENCES DLC(title) ON DELETE CASCADE,
    CONSTRAINT [FK_PURCHASE_DLC_dlc_release_date] FOREIGN KEY (dlc_release_date) REFERENCES DLC(release_date) ON DELETE CASCADE,
	
		
)
