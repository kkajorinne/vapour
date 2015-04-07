CREATE TABLE [dbo].[PURCHASE]
(
	[gamer_username] VARCHAR(50) NOT NULL , 
    [date_time] DATETIME NOT NULL, 
    [amount] MONEY NOT NULL, 
    [method] VARCHAR(50) NOT NULL, 
    PRIMARY KEY ([gamer_username], [date_time]), 
    CONSTRAINT [FK_PURCHASE_GAMER] FOREIGN KEY (gamer_username) REFERENCES GAMER(username)
)
