SELECT *
FROM dbo.GAME, dbo.DLC
WHERE DLC.admin_username IS NULL 
OR GAME.admin_username IS NULL