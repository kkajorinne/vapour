CREATE TABLE [dbo].[BUNDLE_OF_DLC]
(
	[bundle_name] VARCHAR(50) NOT NULL , 
	[dlc_game_title] VARCHAR(50) NOT NULL , 
    [dlc_game_release_date] DATE NOT NULL, 
	[dlc_title] VARCHAR(50) NOT NULL , 
    [dlc_release_date] DATE NOT NULL, 
    PRIMARY KEY ([bundle_name], [dlc_game_title], [dlc_game_release_date], [dlc_title], [dlc_release_date]), 
	CONSTRAINT [FK_BUNDLE_OF_DLC_bundle] FOREIGN KEY ([bundle_name]) REFERENCES BUNDLE([name]),
	CONSTRAINT [FK_BUNDLE_OF_DLC_dlc] FOREIGN KEY ([dlc_game_title], [dlc_game_release_date], [dlc_title], [dlc_release_date]) REFERENCES DLC([game_title], [game_release_date], [title], [release_date])
)
