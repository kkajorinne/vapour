CREATE TABLE [dbo].[PURCHASE_OF_DLC]
(
	[purchase_gamer_username] VARCHAR(50) NOT NULL , 
    [purchase_date_time] DATETIME NOT NULL, 
	[dlc_game_title] VARCHAR(50) NOT NULL , 
    [dlc_game_release_date] DATE NOT NULL, 
	[dlc_title] VARCHAR(50) NOT NULL , 
    [dlc_release_date] DATE NOT NULL, 
    PRIMARY KEY ([purchase_gamer_username], [purchase_date_time], [dlc_game_title], [dlc_game_release_date], [dlc_title], [dlc_release_date]), 
    CONSTRAINT [FK_PURCHASE_OF_DLC_purchase] FOREIGN KEY ([purchase_gamer_username], [purchase_date_time]) REFERENCES PURCHASE([gamer_username], [date_time]),
    CONSTRAINT [FK_PURCHASE_OF_DLC_dlc] FOREIGN KEY ([dlc_game_title], [dlc_game_release_date], [dlc_title], [dlc_release_date]) REFERENCES DLC([game_title], [game_release_date], [title], [release_date])
)
