CREATE TABLE [dbo].[PURCHASE_OF_BUNDLE]
(
	[purchase_gamer_username] VARCHAR(50) NOT NULL , 
    [purchase_date_time] DATETIME NOT NULL, 
    [bundle_name] VARCHAR(50) NOT NULL, 
    PRIMARY KEY ([purchase_gamer_username], [purchase_date_time], [bundle_name]), 
	CONSTRAINT [FK_PURCHASE_BUNDLE_bundle_name] FOREIGN KEY (bundle_name) REFERENCES BUNDLE(name) ON DELETE CASCADE,
    CONSTRAINT [FK_PURCHASE_BUNDLE_gamer_username] FOREIGN KEY ([purchase_gamer_username]) REFERENCES PURCHASE(gamer_username) ON DELETE CASCADE,
	CONSTRAINT [FK_PURCHASE_BUNDLE_date_time] FOREIGN KEY ([purchase_date_time]) REFERENCES PURCHASE(date_time) ON DELETE CASCADE	
)
