CREATE TABLE [dbo].[BUNDLE_OF_GAME]
(
	[bundle_name] VARCHAR(50) NOT NULL , 
	[game_title] VARCHAR(50) NOT NULL , 
    [game_release_date] DATE NOT NULL, 
    PRIMARY KEY ([bundle_name], [game_title], [game_release_date]), 
	CONSTRAINT [FK_BUNDLE_GAME_bundle_name] FOREIGN KEY (bundle_name) REFERENCES BUNDLE(name) ON DELETE CASCADE,
	CONSTRAINT [FK_BUNDLE_GAME_title] FOREIGN KEY (game_title) REFERENCES GAME(title) ON DELETE CASCADE,
    CONSTRAINT [FK_BUNDLE_GAME_release_date] FOREIGN KEY (game_release_date) REFERENCES GAME(release_date) ON DELETE CASCADE,
)
