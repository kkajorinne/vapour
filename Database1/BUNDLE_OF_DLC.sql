CREATE TABLE [dbo].[BUNDLE_OF_DLC]
(
	[bundle_name] VARCHAR(50) NOT NULL , 
	[dlc_game_title] VARCHAR(50) NOT NULL , 
    [dlc_game_release_date] DATE NOT NULL, 
	[dlc_title] VARCHAR(50) NOT NULL , 
    [dlc_release_date] DATE NOT NULL, 
    PRIMARY KEY ([bundle_name], [dlc_game_title], [dlc_game_release_date], [dlc_title], [dlc_release_date]), 
	CONSTRAINT [FK_BUNDLE_DLC_bundle_name] FOREIGN KEY (bundle_name) REFERENCES BUNDLE(name) ON DELETE CASCADE,
	CONSTRAINT [FK_BUNDLE_DLC_game_title] FOREIGN KEY (dlc_game_title) REFERENCES DLC(game_title) ON DELETE CASCADE,
    CONSTRAINT [FK_BUNDLE_DLC_game_release_date] FOREIGN KEY (dlc_game_release_date) REFERENCES DLC(game_release_date) ON DELETE CASCADE,
	CONSTRAINT [FK_BUNDLE_DLC_title] FOREIGN KEY (dlc_title) REFERENCES DLC(title) ON DELETE CASCADE,
    CONSTRAINT [FK_BUNDLE_DLC_release_date] FOREIGN KEY (dlc_release_date) REFERENCES DLC(release_date) ON DELETE CASCADE,
	
)
