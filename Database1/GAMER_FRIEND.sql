CREATE TABLE [dbo].[GAMER_FRIENDS]
(
	[gamer_username] VARCHAR(50) NOT NULL , 
    [gamer_username_friend] VARCHAR(50) NOT NULL, 
    PRIMARY KEY ([gamer_username], [gamer_username_friend]), 
    CONSTRAINT [FK_GAMER_FRIEND] FOREIGN KEY (gamer_username) REFERENCES GAMER(username),
	CONSTRAINT [FK_GAMER_FRIEND_OF] FOREIGN KEY (gamer_username_friend) REFERENCES GAMER(username)
)
