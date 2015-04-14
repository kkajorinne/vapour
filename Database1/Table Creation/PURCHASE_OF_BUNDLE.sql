CREATE TABLE [dbo].[PURCHASE_OF_BUNDLE]
(
	[purchase_gamer_username] VARCHAR(50) NOT NULL , 
    [purchase_date_time] DATETIME NOT NULL, 
    [bundle_name] VARCHAR(50) NOT NULL, 
    PRIMARY KEY ([purchase_gamer_username], [purchase_date_time], [bundle_name]), 
    CONSTRAINT [FK_PURCHASE_OF_BUNDLE_purchase] FOREIGN KEY ([purchase_gamer_username], [purchase_date_time]) REFERENCES PURCHASE([gamer_username], [date_time]),
	CONSTRAINT [FK_PURCHASE_OF_BUNDLE_bundle] FOREIGN KEY ([bundle_name]) REFERENCES BUNDLE([name])
)
